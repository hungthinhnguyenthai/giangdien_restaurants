package com.aktv.project.giangdien.mybatis.typehandler.scan;

import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import static com.google.common.base.Objects.firstNonNull;

/**
 * Allow to convert some fields with
 *
 * @author Brice Dutheil
 */
@MappedTypes(List.class)
@MappedJdbcTypes({JdbcType.VARCHAR})
public abstract class CharacterSeparatedStringList<T extends List<String>> extends BaseTypeHandler<T> {

  private char separator;

  public CharacterSeparatedStringList(char c) {
    separator = c;
  }

  @Override
  public void setNonNullParameter(PreparedStatement ps, int paramIndex, T parameter, JdbcType jdbcType) throws SQLException {
    if (parameter != null && !parameter.isEmpty()) {
      ps.setString(paramIndex, toCommaSeparatedString(parameter));
    } else {
      ps.setString(paramIndex, null);
    }
  }

  @Override
  public T getNullableResult(ResultSet rs, String columnName) throws SQLException {
    return toListOfString(rs.getString(columnName));
  }

  @Override
  public T getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    return toListOfString(rs.getString(columnIndex));

  }

  @Override
  public T getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    return toListOfString(cs.getString(columnIndex));
  }

  @SuppressWarnings("unchecked")
  private T toListOfString(String commaSeparatedListOfString) {
    return (T) ImmutableList.copyOf(Splitter
            .on(separator)
            .omitEmptyStrings()
            .trimResults()
            .split(Objects.firstNonNull(commaSeparatedListOfString, ""))
    );
  }

  private String toCommaSeparatedString(T parameter) {
    return Joiner.on(separator).skipNulls().join(parameter);
  }


}

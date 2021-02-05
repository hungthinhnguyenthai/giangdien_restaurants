package com.aktv.project.giangdien.mybatis.typehandler.scan;

import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

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
public class CommaSeparatedRoleList extends BaseTypeHandler<List<GrantedAuthority>> {



  @Override
  public void setNonNullParameter(PreparedStatement ps, int paramIndex, List<GrantedAuthority> parameter, JdbcType jdbcType) throws SQLException {
    if (parameter != null && !parameter.isEmpty()) {
      ps.setString(paramIndex, toCommaSeparatedString(parameter));
    } else {
      ps.setString(paramIndex, null);
    }
  }

  @Override
  public List<GrantedAuthority> getNullableResult(ResultSet rs, String columnName) throws SQLException {
    String commaSeparatedString = rs.getString(columnName);
    if(commaSeparatedString==null){
      return Lists.newArrayList();
    }
    return AuthorityUtils.commaSeparatedStringToAuthorityList(commaSeparatedString);
  }

  @Override
  public List<GrantedAuthority> getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    String commaSeparatedString = rs.getString(columnIndex);
    if(commaSeparatedString==null){
      return Lists.newArrayList();
    }
    return AuthorityUtils.commaSeparatedStringToAuthorityList(commaSeparatedString);

  }

  @Override
  public List<GrantedAuthority> getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    String commaSeparatedString = cs.getString(columnIndex);
    if(commaSeparatedString==null){
      return Lists.newArrayList();
    }
    return AuthorityUtils.commaSeparatedStringToAuthorityList(commaSeparatedString);
  }

  @SuppressWarnings("unchecked")
  private ImmutableList<String> toListOfString(String commaSeparatedListOfString) {
    return  ImmutableList.copyOf(Splitter
            .on(",")
            .omitEmptyStrings()
            .trimResults()
            .split(Objects.firstNonNull(commaSeparatedListOfString, ""))
    );
  }

  private String toCommaSeparatedString(List<GrantedAuthority> parameter) {
    return Joiner.on(",").skipNulls().join(parameter);
  }

}

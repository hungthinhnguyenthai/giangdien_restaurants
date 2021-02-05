package com.aktv.project.giangdien.mybatis.typehandler.noscan;

import com.aktv.project.giangdien.data.enums.EnumAlternativeName;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class EnumAlternativeNameTypeHandler<E extends Enum<E> & EnumAlternativeName> extends BaseTypeHandler<E> {

  private Class<E> type;
  private Map<String,E> mappedByAlternativeName;


  // needed for Java -> SQL (update/delete/insert queries)
  public EnumAlternativeNameTypeHandler() {
  }

  // needed for SQL -> Java (resultmap)
  public EnumAlternativeNameTypeHandler(Class<E> type) {
    Preconditions.checkNotNull(type);
    Preconditions.checkNotNull(type.getEnumConstants(),type.getSimpleName() + " does not represent an enum type.");
    List<E> enums = Lists.newArrayList(type.getEnumConstants());
    this.type = type;
    this.mappedByAlternativeName = Maps.uniqueIndex(enums, EnumAlternativeName.GET_ALTERNATIVE_NAME);
  }

  private E getEnumConstFromAlternativeName(String alternativeName) {
    checkValidState();
    if ( alternativeName == null ) {
      return null;
    } else {
      E enumConst = mappedByAlternativeName.get(alternativeName);
      Preconditions.checkNotNull(enumConst,"No enum could be found for "+type+" with alternative name " + alternativeName);
      return enumConst;
    }
  }

  private void checkValidState() {
    if (type == null) {
      throw new IllegalStateException("This class is being used without the enum type necessary for mapping the SQL result to a Java type" +
          "This is probably because MyBatis already scanned this mapper and is using the instance with the noarg constructor." +
          "You should check your typehandler configuration, either in the mybatis setting file or where the 'org.mybatis.spring.SqlSessionFactoryBean' is declared");
    }
  }

  @Override
  public void setNonNullParameter(PreparedStatement ps, int i, E parameter, JdbcType jdbcType) throws SQLException {
    EnumAlternativeName enumAlternativeName = parameter;
    String alternativeName = enumAlternativeName.getAlternativeName();
    if (jdbcType == null) {
      ps.setString(i, alternativeName );
    } else {
      ps.setObject(i, alternativeName , jdbcType.TYPE_CODE);
    }
  }

  @Override
  public E getNullableResult(ResultSet rs, String columnName) throws SQLException {
    String s = rs.getString(columnName);
    return getEnumConstFromAlternativeName(s);
  }

  @Override
  public E getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    String s = rs.getString(columnIndex);
    return getEnumConstFromAlternativeName(s);
  }

  @Override
  public E getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    String s = cs.getString(columnIndex);
    return getEnumConstFromAlternativeName(s);
  }

}
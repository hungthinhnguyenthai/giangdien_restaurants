package com.aktv.project.giangdien.mybatis.typehandler.noscan;

import com.aktv.project.giangdien.data.enums.EnumAlternativeValue;
import com.aktv.project.giangdien.data.enums.EnumAlternativeValueHelper;
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

public class EnumAlternativeOrdinalTypeHandler<E extends Enum<E> & EnumAlternativeValue<Integer>> extends BaseTypeHandler<E> {

  private Class<E> type;
  private Map<Integer,E> mappedByAlternativeOrdinal;


  // needed for Java -> SQL (update/delete/insert queries)
  public EnumAlternativeOrdinalTypeHandler() {
  }

  // needed for SQL -> Java (resultmap)
  public EnumAlternativeOrdinalTypeHandler(Class<E> type) {
    Preconditions.checkNotNull(type);
    Preconditions.checkNotNull(type.getEnumConstants(),type.getSimpleName() + " does not represent an enum type.");
    List<E> enums = Lists.newArrayList(type.getEnumConstants());
    this.type = type;
    this.mappedByAlternativeOrdinal = Maps.uniqueIndex(enums, EnumAlternativeValueHelper.<Integer>getAlternativeValueFunction());
  }

  private E getEnumConstFromAlternativeValue(Integer alternativeOrdinal) {
    checkValidState();
    if ( alternativeOrdinal == null ) {
      return null;
    } else {
      E enumConst = mappedByAlternativeOrdinal.get(alternativeOrdinal);
      Preconditions.checkNotNull(enumConst,"No enum could be found for "+type+" with alternative ordinal " + alternativeOrdinal);
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
    EnumAlternativeValue<Integer> enumAlternativeValue = parameter;
    Integer alternativeValue= enumAlternativeValue.getAlternativeValue();
    if (jdbcType == null) {
      ps.setInt(i, alternativeValue);
    } else {
      ps.setObject(i, alternativeValue , jdbcType.TYPE_CODE);
    }
  }

  @Override
  public E getNullableResult(ResultSet rs, String columnName) throws SQLException {
    int ordinal = rs.getInt(columnName);
    if ( rs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(ordinal);
    }
  }

  @Override
  public E getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    int ordinal = rs.getInt(columnIndex);
    if ( rs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(ordinal);
    }
  }

  @Override
  public E getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    int ordinal = cs.getInt(columnIndex);
    if ( cs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(ordinal);
    }
  }

}
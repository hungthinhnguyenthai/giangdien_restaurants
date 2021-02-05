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

/**
 * Même chose que {@link EnumAlternativeNameTypeHandler} mais pour gérer les mappings de strings
 *
 * @see org.apache.ibatis.type.TypeHandlerRegistry#getInstance(Class, Class)
 * @author Max Velasco <velasco-martin@ekino.com>
 */
public class EnumAlternativeStringTypeHandler<E extends Enum<E> & EnumAlternativeValue<String>> extends BaseTypeHandler<E> {

  private Class<E> type;
  private Map<String,E> mappedByAlternativeString;

  public EnumAlternativeStringTypeHandler() { }

  public EnumAlternativeStringTypeHandler(Class<E> type){
    Preconditions.checkNotNull(type);
    Preconditions.checkNotNull(type.getEnumConstants(),type.getSimpleName() + " does not represent an enum type.");
    List<E> enums = Lists.newArrayList(type.getEnumConstants());
    this.type = type;
    this.mappedByAlternativeString = Maps.uniqueIndex(enums, EnumAlternativeValueHelper.<String>getAlternativeValueFunction());
  }

  private E getEnumConstFromAlternativeValue(String alternativeString) {
    checkValidState();
    if (alternativeString == null) {
      return null;
    } else {
      E enumConst = mappedByAlternativeString.get(alternativeString);
      Preconditions.checkNotNull(enumConst,"No enum could be found for "+type+" with alternative string " + alternativeString);
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
  public void setNonNullParameter(PreparedStatement preparedStatement, int i, E e, JdbcType jdbcType) throws SQLException {
    EnumAlternativeValue<String> enumAlternativeValue = e;
    String alternativeValue= enumAlternativeValue.getAlternativeValue();
    if (jdbcType == null) {
      preparedStatement.setString(i, alternativeValue);
    } else {
      preparedStatement.setObject(i, alternativeValue , jdbcType.TYPE_CODE);
    }
  }

  @Override
  public E getNullableResult(ResultSet rs, String columnName) throws SQLException {
    String value = rs.getString(columnName);
    if ( rs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(value);
    }
  }

  @Override
  public E getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    String value = rs.getString(columnIndex);
    if ( rs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(value);
    }
  }

  @Override
  public E getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    String value = cs.getString(columnIndex);
    if ( cs.wasNull() ) {
      return null;
    }
    else {
      return getEnumConstFromAlternativeValue(value);
    }
  }
}

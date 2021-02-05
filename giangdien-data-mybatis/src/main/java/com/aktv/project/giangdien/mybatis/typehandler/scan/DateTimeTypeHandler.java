package com.aktv.project.giangdien.mybatis.typehandler.scan;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.joda.time.DateTime;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

@MappedTypes(DateTime.class)
@MappedJdbcTypes(value = {JdbcType.DATE, JdbcType.TIMESTAMP})
public class DateTimeTypeHandler extends BaseTypeHandler<DateTime> {

  @Override
  public void setNonNullParameter(PreparedStatement ps, int paramIndex, DateTime parameter, JdbcType jdbcType) throws SQLException {
    if (parameter != null) {
      ps.setTimestamp(paramIndex, new Timestamp(parameter.toInstant().getMillis()) );
    } else {
      ps.setTimestamp(paramIndex, null);
    }
  }

  @Override
  public DateTime getNullableResult(ResultSet rs, String columnName) throws SQLException {
    return asDateTimeIfNotNull(rs.getTimestamp(columnName));
  }

  @Override
  public DateTime getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    return asDateTimeIfNotNull(rs.getTimestamp(columnIndex));
  }

  @Override
  public DateTime getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    return asDateTimeIfNotNull(cs.getTimestamp(columnIndex));
  }

  /**
   * Par defaut le DateTime est dans la TimeZone de la JVM
   * Attention: dans une application internationalisée, c'est pas forcement le timezone que vous souhaitez utiliser!
   * Donc il faudra utiliser withZone(DateTimeZone) pour convertir le DateTime en sortie de DB quand il est necessaire de le faire!
   * @param ts
   * @return
   */
  private DateTime asDateTimeIfNotNull(Timestamp ts) {
    if (ts != null) {
      return new DateTime(ts.getTime());
    } else {
      return null;
    }
  }

}
package com.aktv.project.giangdien.mybatis.typehandler.scan;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.joda.time.LocalDate;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

@MappedTypes(LocalDate.class)
@MappedJdbcTypes(value = {JdbcType.DATE, JdbcType.TIMESTAMP})
public class LocalDateTypeHandler extends BaseTypeHandler<LocalDate> {

  @Override
  public void setNonNullParameter(PreparedStatement ps, int paramIndex, LocalDate date, JdbcType jdbcType) throws SQLException {
    if (date != null) {
      ps.setTimestamp(paramIndex, new Timestamp(date.toDateTimeAtStartOfDay().toInstant().getMillis()));
    } else {
      ps.setTimestamp(paramIndex, null);
    }
  }

  @Override
  public LocalDate getNullableResult(ResultSet rs, String columnName) throws SQLException {
    return asLocalDateIfNotNull(rs.getTimestamp(columnName));
  }

  @Override
  public LocalDate getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    return asLocalDateIfNotNull(rs.getTimestamp(columnIndex));
  }

  @Override
  public LocalDate getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    return asLocalDateIfNotNull(cs.getTimestamp(columnIndex));
  }

  private LocalDate asLocalDateIfNotNull(Timestamp timestamp) {
    if (timestamp != null) {
      return new LocalDate(timestamp.getTime());
    } else {
      return null;
    }
  }

}
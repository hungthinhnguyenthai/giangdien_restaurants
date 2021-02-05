package com.aktv.project.giangdien.mybatis.typehandler.scan;

import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.aktv.project.giangdien.data.crypto.EncryptProvider;
import com.aktv.project.giangdien.data.crypto.type.EncryptedValue;
import lombok.Setter;
import org.apache.commons.codec.binary.Base64;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@MappedTypes(EncryptedValue.class)
@MappedJdbcTypes(value = {JdbcType.VARCHAR})
public class BlowFishParamHandler extends BaseTypeHandler<EncryptedValue> {

  @Autowired
  @Qualifier("myBatisBlowfishEncryptProvider")
  @Setter
  private EncryptProvider encryptProvider;

  @Autowired
  @Qualifier("myBatisBlowfishDecryptProvider")
  @Setter
  private DecryptProvider decryptProvider;

  @Override
  public void setNonNullParameter(PreparedStatement ps, int i, EncryptedValue parameter, JdbcType jdbcType) throws SQLException {
    if (parameter == null) {
      ps.setString(i, null);
      return;
    }
    try {
      String value = Base64.encodeBase64String(encryptProvider.encrypt(parameter.getValue().getBytes()));
      ps.setString(i, value);
    } catch (IllegalBlockSizeException | InvalidKeyException | SignatureException | NoSuchAlgorithmException | BadPaddingException e) {
      throw new SQLException(e);
    }
  }

  @Override
  public EncryptedValue getNullableResult(ResultSet rs, String columnName) throws SQLException {
    return decryptValue(rs.getString(columnName));
  }

  @Override
  public EncryptedValue getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
    return decryptValue(rs.getString(columnIndex));
  }

  @Override
  public EncryptedValue getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
    return decryptValue(cs.getString(columnIndex));
  }

  private EncryptedValue decryptValue(String value) throws SQLException {
    if (value == null) {
      return null;
    }
    try {
      return new EncryptedValue(new String(decryptProvider.decrypt(Base64.decodeBase64(value))));
    } catch (BadPaddingException | IllegalBlockSizeException e) {
      throw new SQLException(e);
    }
  }
}

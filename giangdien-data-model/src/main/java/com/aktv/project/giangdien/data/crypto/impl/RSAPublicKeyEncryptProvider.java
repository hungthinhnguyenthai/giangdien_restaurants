package com.aktv.project.giangdien.data.crypto.impl;

import com.aktv.project.giangdien.data.crypto.EncryptProvider;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.openssl.PEMParser;
import org.springframework.core.io.Resource;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;

public class RSAPublicKeyEncryptProvider extends AbstractRSAProvider implements EncryptProvider {

  private Cipher cipher;

  @Override
  public void initialiseRSAProvider(Resource keyFile) throws IOException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidKeySpecException {


    try (Reader reader = new InputStreamReader(keyFile.getInputStream()); PEMParser parser = new PEMParser(reader);) {
      Key key = readKey(parser);
      cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");

      cipher.init(Cipher.ENCRYPT_MODE, key);
    }
  }

  public RSAPublicKeyEncryptProvider(Resource keyFile) throws IOException, InvalidKeySpecException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException {
    initialiseRSAProvider(keyFile);
  }

  @Override
  protected Key readKey(PEMParser parser) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
    SubjectPublicKeyInfo result = (SubjectPublicKeyInfo) parser.readObject();
    RSAKeyParameters keyParameters = (RSAKeyParameters) PublicKeyFactory.createKey(result);
    return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(keyParameters.getModulus(), keyParameters.getExponent()));
  }

  @Override
  public byte[] encrypt(byte[] data) throws BadPaddingException, IllegalBlockSizeException {
    return cipher.doFinal(data);
  }
}

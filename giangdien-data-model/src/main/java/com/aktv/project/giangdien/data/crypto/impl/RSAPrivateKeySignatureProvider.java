package com.aktv.project.giangdien.data.crypto.impl;

import com.aktv.project.giangdien.data.crypto.SignatureProvider;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.util.PrivateKeyFactory;
import org.bouncycastle.openssl.PEMDecryptorProvider;
import org.bouncycastle.openssl.PEMEncryptedKeyPair;
import org.bouncycastle.openssl.PEMParser;
import org.bouncycastle.openssl.jcajce.JcePEMDecryptorProviderBuilder;
import org.springframework.core.io.Resource;

import javax.crypto.NoSuchPaddingException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.*;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPrivateKeySpec;

/**
 * Provider permettant de chiffrer un texte en utilisant une clé privé et l'algorithme RSA
 *
 * @author Vincent Doba
 */
public class RSAPrivateKeySignatureProvider extends AbstractRSAProvider implements SignatureProvider {

  private String privateKeyPassword;

  private PrivateKey privateKey;


  @Override
  public void initialiseRSAProvider(Resource keyFile) throws IOException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidKeySpecException {
    Reader reader = new InputStreamReader(keyFile.getInputStream());
    PEMParser parser = new PEMParser(reader);
    privateKey = readKey(parser);
  }

  /**
   * Construit l'objet à partir de la ressource de la clé privée et du mot de passe de la clé privée
   *
   * @param keyFile            la ressource contenant la clé privée
   * @param privateKeyPassword le mot de passe de la clé privée
   * @throws IOException
   */
  public RSAPrivateKeySignatureProvider(Resource keyFile, String privateKeyPassword) throws IOException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidKeySpecException {
    this.privateKeyPassword = privateKeyPassword;
    initialiseRSAProvider(keyFile);
  }

  protected PrivateKey readKey(PEMParser parser) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
    // TODO improve read of key
    PEMEncryptedKeyPair result = (PEMEncryptedKeyPair) parser.readObject();
    PEMDecryptorProvider decryptor = new JcePEMDecryptorProviderBuilder().build(privateKeyPassword.toCharArray());
    RSAKeyParameters keyParameters = (RSAKeyParameters) PrivateKeyFactory.createKey(result.decryptKeyPair(decryptor).getPrivateKeyInfo());
    return KeyFactory.getInstance("RSA").generatePrivate(new RSAPrivateKeySpec(keyParameters.getModulus(), keyParameters.getExponent()));
  }

  @Override
  public byte[] sign(byte[] data) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
    Signature sign = Signature.getInstance("SHA1withRSA");
    sign.initSign(privateKey);
    sign.update(data);
    return sign.sign();
  }
}

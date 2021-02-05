package com.aktv.project.giangdien.data.crypto;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;

public interface EncryptProvider {

  byte[] encrypt(byte[] data) throws BadPaddingException, IllegalBlockSizeException, SignatureException, InvalidKeyException, NoSuchAlgorithmException;
}

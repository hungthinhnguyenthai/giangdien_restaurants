package com.aktv.project.giangdien.data.crypto;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;

public interface SignatureProvider {

  byte[] sign(byte[] data) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException;

}

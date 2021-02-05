package com.aktv.project.giangdien.data.crypto.impl;

import org.bouncycastle.openssl.PEMParser;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public abstract class AbstractRSAProvider {

  public abstract void initialiseRSAProvider(Resource keyFile) throws Exception;

  protected abstract Key readKey(PEMParser parser) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException;


}
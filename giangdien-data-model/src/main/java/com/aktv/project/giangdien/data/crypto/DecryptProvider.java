package com.aktv.project.giangdien.data.crypto;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

public interface DecryptProvider {

  byte[] decrypt(byte[] data) throws BadPaddingException, IllegalBlockSizeException;
}

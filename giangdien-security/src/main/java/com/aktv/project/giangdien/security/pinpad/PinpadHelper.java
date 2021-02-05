package com.aktv.project.giangdien.security.pinpad;

import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.Throwables;
import org.apache.commons.codec.binary.Base64;
import org.joda.time.DateTime;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import java.util.Map;
import java.util.regex.Pattern;

/**
 * PinpadHelper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class PinpadHelper {

    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(PinpadHelper.class);

    public static final String INPUT_REGEX = "[0-9]{6}";
    public static final Pattern INPUT_REGEX_PATTERN = Pattern.compile(INPUT_REGEX);

    private DecryptProvider pinpadDecryptProvider;

    @Value("${pinpad.ttl}")
    private int pinpadTtl;

    public PinpadHelper(DecryptProvider pinpadDecryptProvider) {
        this.pinpadDecryptProvider = pinpadDecryptProvider;
    }

    public Pinpad decryptInput(String input, String encryptedData) {
        Preconditions.checkArgument(input != null,"The input is null");
        Preconditions.checkArgument(INPUT_REGEX_PATTERN.matcher(input).matches(),"Invalid pinpad input: " + input);
        Preconditions.checkArgument(encryptedData != null,"The encryptedData is null");

        byte[] encryptedValue = Base64.decodeBase64(encryptedData);
        String value = null;
        try {
            value = new String(pinpadDecryptProvider.decrypt(encryptedValue));
        } catch (Exception e) {
            LOGGER.error("Error while decrypting pinpad, should never happen as pinpad implementation of decryptProvider doesn't raise exception", e);
            Throwables.propagate(e);
        }
        Map<String, String> params = Splitter.on('&').withKeyValueSeparator("=").split(value);
        String pinpadSeq = params.get("pinpadseq");
        String password = convertPinpadInputToPassword(input, pinpadSeq);

        /**
         * Multiplication par 1000, car PHP = nombre de seconde depuis 1970, Java = nombre de MILLIseconde depuis 1970
         */
        return new Pinpad(input, password, pinpadSeq, new DateTime(Long.valueOf(params.get("pinpadts")) * 1000), pinpadTtl);
    }

    private String convertPinpadInputToPassword(String pinpadInput, String pinpadSeq) {
        Preconditions.checkArgument(pinpadInput != null,"pinpadInput is null");
        Preconditions.checkArgument(INPUT_REGEX_PATTERN.matcher(pinpadInput).matches(),"Invalid pinpad input: " + pinpadInput);
        StringBuilder password = new StringBuilder();
        int[] pinpadSeqArray = invertPinpadSeq(pinpadSeq);
        for (int i = 0; i < pinpadInput.length(); i++) {
            password.append(pinpadSeqArray[pinpadInput.charAt(i) - '0']);
        }
        return password.toString();
    }

    private int[] invertPinpadSeq(String pinpadSeq) {
        int[] newSeq = new int[pinpadSeq.length()];

        for (int i = 0; i < pinpadSeq.length(); i++) {
            newSeq[pinpadSeq.charAt(i) - '0'] = i;
        }

        return newSeq;
    }


}

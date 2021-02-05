package com.aktv.project.giangdien.security.pinpad;

/**
 * PinpadUtils -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class PinpadUtils {

    public static String convertPinpadInputToPassword(String pinpadInput, String pinpadSeq) {
        StringBuilder password = new StringBuilder();
        int[] pinpadSeqArray = invertPinpadSeq(pinpadSeq);
        for (int i = 0; i < pinpadInput.length(); i++) {
            password.append(pinpadSeqArray[pinpadInput.charAt(i) - '0']);
        }
        return password.toString();
    }

    private static int[] invertPinpadSeq(String pinpadSeq) {
        int[] newSeq = new int[pinpadSeq.length()];

        for (int i = 0; i < pinpadSeq.length(); i++) {
            newSeq[pinpadSeq.charAt(i) - '0'] = i;
        }

        return newSeq;
    }

}

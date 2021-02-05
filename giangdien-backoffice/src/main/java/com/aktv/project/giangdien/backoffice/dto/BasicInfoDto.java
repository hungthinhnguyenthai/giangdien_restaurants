package com.aktv.project.giangdien.backoffice.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;


/**
 * com.aktv.project.giangdien.backoffice.model.BasicInfo
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
public class BasicInfoDto implements Serializable {

    private Map<String, String> keyPair = new HashMap();

}

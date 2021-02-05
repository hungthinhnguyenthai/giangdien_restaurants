package com.aktv.project.giangdien.backoffice.jackson;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.module.SimpleModule;

/**
 * CustomObjectMapper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class CustomObjectMapper extends ObjectMapper{

    public CustomObjectMapper() {
//        SimpleModule sf = new SimpleModule();
//        sf.addSerializer(ReadableDateTime.class, new JodaSerializer());
//        this.registerModule(sf);
//        this.disable(SerializationFeature.FAIL_ON_EMPTY_BEANS);
    }
}

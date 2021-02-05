package com.aktv.project.giangdien.security.utils;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Multimap;

import java.util.LinkedList;

/**
 * UrlUtils -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public abstract class UrlUtils {

    public static Multimap<String, String> getQueryParams(String urlOrUri) {
        String queryParamsPart;
        if (urlOrUri.contains("?")) {
            queryParamsPart = urlOrUri.substring(urlOrUri.indexOf('?') + 1);
        } else {
            queryParamsPart = urlOrUri;
        }

        Multimap<String, String> params = LinkedListMultimap.create();
        for (String param : Splitter.on('&').split(queryParamsPart)) {
            String[] splits = param.split("=");
            String name;
            String value;
            if (splits.length == 0) {
                name = param;
                value = null;
            } else {
                name = splits[0];
                value = splits.length == 2 ? splits[1] : null;
            }
            params.put(name, value);
        }

        return params;
    }

    public static String removeParameterFromQueryString(String queryString, String paramToRemove) {
        Preconditions.checkArgument(queryString != null, "Empty querystring");
        Preconditions.checkArgument(paramToRemove != null, "Empty param");
        String oneParam = "^" + paramToRemove + "(=[^&]*)$";
        String begin = "^" + paramToRemove + "(=[^&]*)(&?)";
        String end = "&" + paramToRemove + "(=[^&]*)$";
        String middle = "(?<=[&])" + paramToRemove + "(=[^&]*)&";
        String removedMiddleParams = queryString.replaceAll(middle, "");
        String removedBeginParams = removedMiddleParams.replaceAll(begin, "");
        String removedEndParams = removedBeginParams.replaceAll(end, "");
        return removedEndParams.replaceAll(oneParam, "");
    }

    public static String addParametersFromQueryString(String queryString, String parameter, String value) {
        String finalString = removeParameterFromQueryString(queryString, parameter); // Start to remove parameter before add it

        if (finalString.contains("?")) {
            return finalString + "&" + parameter + "=" + value;
        } else {
            return finalString + "?" + parameter + "=" + value;
        }
    }

    public static String getDomain(String urlOrServerName) {
        String finalUrlOrServerName = urlOrServerName.replaceAll("http[s]?\\:\\/\\/", "");
        int index = finalUrlOrServerName.indexOf('/');
        if (index != -1) {
            finalUrlOrServerName = finalUrlOrServerName.substring(0, index);
        }

        LinkedList<String> split = Lists.newLinkedList(Splitter.on('.').split(finalUrlOrServerName));
        if(split.size() > 2) {
            split.removeFirst();
        }
        return Joiner.on('.').join(split);
    }


}

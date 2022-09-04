package com.kcy.common;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;


public class EncodeFileName {

    // Client의 브라우저 확인
    public static String getBrowser(HttpServletRequest request) {
        String userAgent = request.getHeader("User-Agent");

        if (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1) {
            // IE 버전 별 체크 >> Trident/7.0(IE 11), Trident/6.0(IE 10) , Trident/5.0(IE 9) ,
            // Trident/4.0(IE 8)
            return "MSIE";
        } else if (userAgent.indexOf("Chrome") > -1) {
            return "Chrome";
        } else if (userAgent.indexOf("Opera") > -1) {
            return "Opera";
        } else if (userAgent.indexOf("Firefox") > -1) {
            return "Firefox";
        }
        return "Safari";
    }

    
    
    // 파일 다운로드 시 Cilent의 브라우저에 따라 파일명의 인코딩 설정
    public static String getEncodedFileName(String filename, String browser) throws Exception {

        String encodedFilename = null;
        if (browser.equals("MSIE")) {
            // 한글 파일명 깨짐현상을 해결하기 위해 URLEncoder.encode 메소드를 사용하는데,
            // 파일명에 공백이 존재할 경우 URLEncoder.encode 메소드에의해 공백이 '+' 로 변환됩니다.
            // 변환된 '+' 값을 다시 공백으로(%20)으로 replace처리하시면 됩니다.
            // \\+의 의미는 정규표현식에서 역슬래시(\)는 확장문자로
            // 역슬래시 다음에 일반문자가 오면 특수문자로 취급하고
            // 역슬래시 다음에 특수문자가 오면 그 문자 자체를 의미
            // 기존 파일명에 있던 '+' 는 URLEncoder.encode() 메소드에 의해 '%2B' 로 변환이 됩니다.
            encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
        } else if (browser.equals("Firefox")) {
            encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
        } else if (browser.equals("Opera")) {
            encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
        } else if (browser.equals("Chrome")) {
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < filename.length(); i++) {
                char c = filename.charAt(i);
                if (c > '~') {
                    sb.append(URLEncoder.encode("" + c, "UTF-8"));
                } else {
                    // ASCII문자(0X00 ~ 0X7E)는 URLEncoder.encode를 적용하지 않는다.
                    sb.append(c);
                }
            }
            encodedFilename = sb.toString();
        } else {
            throw new RuntimeException("Not supported browser");
        }
        return encodedFilename;
    }

}

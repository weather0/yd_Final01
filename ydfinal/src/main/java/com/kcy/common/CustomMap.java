package com.kcy.common;

import java.util.HashMap;

import org.springframework.jdbc.support.JdbcUtils;
// 이 클래스는 mybatis resultType으로 VO가 아닌 Map방식을 쓸 때 카멜케이싱 적용하기 위함
// 적용하려면 resultType="CustomMap"으로 적어주면 됨
@SuppressWarnings("serial")
public class CustomMap extends HashMap<String, Object> {

    @Override
    public Object put(String key, Object value) {
        return super.put(JdbcUtils.convertUnderscoreNameToPropertyName(key), value);
    }
    
}

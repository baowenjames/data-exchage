package com.dc.common.dao;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.JdbcUtils;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 *系统名称:通用系统功能<BR>
 *模块名称:数据访问通用功能<BR>
 *中文类名:JSON数据行映射器<BR>
 *概要说明:<BR>
 * @author zhiqiu 2017/3/4
 * @time 22:35
 * @version V1.0.0
 */
public class JsonRowMapper implements RowMapper<JSONObject> {

    /**
     *方法名称:映射行数据<BR>
     *概要说明:<BR>
     * 
     * @param rs 结果集
     * @param row 行号
     * @return JSONObject 数据
     * @throws SQLException SQL异常错误
     * @see RowMapper#mapRow(ResultSet,
     *      int)
     */
    public JSONObject mapRow(ResultSet rs, int row) throws SQLException {
        String key;
        Object obj;
        JSONObject json = new JSONObject();
        ResultSetMetaData rsmd = rs.getMetaData();
        int count = rsmd.getColumnCount();
        for (int i = 1; i <= count; i++) {
            key = JdbcUtils.lookupColumnName(rsmd, i);
            obj = JdbcUtils.getResultSetValue(rs, i);
            try {
                json.put(key, obj);
            }
            catch (JSONException ignored) {
            }
        }
        return json;
    }
}

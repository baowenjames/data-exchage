package com.dc.sys.service.dao;

import com.alibaba.fastjson.JSONObject;
import com.dc.common.dao.BaseJdbcDao;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
* @author zhiqiu 2017/3/5
* @time 21:43
* @version V1.0.0
* @description
*/
@Repository("sysUserDao")
public class SysUserDao extends BaseJdbcDao {
    private static final String SQL_TABLE_NAME = "SYS_USER";
    private static final String SQL_SELECT_SYS_USER = "SELECT * FROM SYS_USER";
    private static final String SQL_SELECT_SYS_USER_BYID = "SELECT * FROM SYS_USER WHERE USER_ID = ?";

    public List<JSONObject> getList() throws Exception {
        return super.queryForJsonList(SQL_SELECT_SYS_USER);
    }

    public JSONObject getById(String id){
        return super.queryForJsonObject(SQL_SELECT_SYS_USER_BYID, id);
    }

    public int insert(JSONObject jsonObject) throws Exception {
        return super.insert(SQL_TABLE_NAME, jsonObject);
    }
}

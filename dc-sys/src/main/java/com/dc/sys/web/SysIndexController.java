package com.dc.sys.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.dc.sys.facade.facade.SysUserFacade;

/**
 * <B>系统名称：</B><BR>
 * <B>模块名称：</B><BR>
 * <B>中文类名：</B><BR>
 * <B>概要说明：</B><BR>
 * @author fei
 * @since 2017年3月1日
 */
@Controller
public class SysIndexController {

    @Autowired
    private SysUserFacade sysUserFacade;

	/**
     * <B>方法名称：</B>系统首页<BR>
     * <B>概要说明：</B><BR>
     * 此处实现的肯定不完美，只是个Demo而已，先把各项功能搞出来
     * @param request 页面请求
     * @param response 页面响应
     * @param dataYear 年份
     * @return ModelAndView 模型视图
     */
    @RequestMapping("sysindex.html")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView ret = new ModelAndView();
        List<JSONObject> list = null;
        try {
            list = this.sysUserFacade.getList();
            for (JSONObject jsonObject : list) {
                System.out.println(jsonObject);
            }
            System.out.println(this.sysUserFacade.getById("admin"));
            System.out.println(this.sysUserFacade.generateKey());
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    

    
    

}

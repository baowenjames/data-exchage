package com.dc.sys.facade.facade;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;


@Path("/sysUserService")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface SysUserFacade {

	@POST
	public String generateKey() throws Exception;

	@GET
	@Path("/getById/{id}")
	public JSONObject getById(@PathParam(value = "id") String id) throws Exception;

	@GET
	@Path("/getList")
	public List<JSONObject> getList() throws Exception;

	@POST
	public int insert(JSONObject jsonObject) throws Exception;
}

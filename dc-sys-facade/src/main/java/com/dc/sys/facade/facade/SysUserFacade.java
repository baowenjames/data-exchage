package com.dc.sys.facade.facade;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.dc.sys.facade.entity.SysUser;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;


@Path("/sysUserService")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface SysUserFacade {

	@GET
    @Path("/testget")
	public void testget();
	
    @GET
    @Path("/getUser")
	public SysUser getUser();
	
	@GET
	@Path("/get/{id : \\d+}")
	public SysUser getUser(@PathParam(value = "id") Integer id);
	
	@GET
	@Path("/get/{id : \\d+}/{name}")
	public SysUser getUser(@PathParam(value = "id") Integer id, @PathParam(value = "name") String name);
	
    @POST
    @Path("/testpost")
	public void testpost();
	
    @POST
    @Path("/postUser")
	public SysUser postUser(SysUser user);
	
	@POST
	@Path("/post/{id}")
	public SysUser postUser(@PathParam(value = "id") String id);
	
}

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import=" org.jasig.cas.client.authentication.*" %>
<%@ page import=" java.util.*" %>

        <%  
                AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();  
                // AttributePrincipal principal = AssertionHolder.getAssertion().getPrincipal();
                String loginName = principal.getName();                          		  
                out.println(loginName + ",欢迎进入子系统"); 
        %>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>cas sample site2</title>
</head>
<body>
<h1>This is cas sample site2</h1>

<br/>
你的个人信息如下：
<br/>
				<%
			Map<String,Object> attributes = principal.getAttributes();		
			//编号
			String  id= attributes.get("id")!=null?attributes.get("id").toString():" ";	
			//用户名
			String  username= attributes.get("username")!=null?attributes.get("username").toString():" ";
			//真实名
			String  realname= attributes.get("realname")!=null?attributes.get("realname").toString():" ";
			//密码
			String  pwd= attributes.get("pwd")!=null?attributes.get("pwd").toString():" ";
			//企业编号
			String  corp_id= attributes.get("corp_id")!=null?attributes.get("corp_id").toString():" ";	
			//创建时间
			String cDate = attributes.get("create_date")!=null?attributes.get("create_date").toString():" ";
			String create_date = cDate.substring(0, cDate.length()-2);
			//创建人
			String  createdby= attributes.get("createdby")!=null?attributes.get("createdby").toString():" ";
			//更新时间
			String uDate = attributes.get("updated_date")!=null?attributes.get("updated_date").toString():" ";
			String updated_date = uDate.substring(0, uDate.length()-2);
			//更新人
			String  updatedby= attributes.get("updatedby")!=null?attributes.get("updatedby").toString():" ";
			//用户类型
			String  usertype= attributes.get("usertype")!=null?attributes.get("usertype").toString():" ";
			//上次登录时间
			String lDate = attributes.get("last_login_date")!=null?attributes.get("last_login_date").toString():" ";
			String last_login_date = lDate.substring(0, lDate.length()-2);
			//状态
			String  status= attributes.get("status")!=null?attributes.get("status").toString():" ";
			//电话
			String  phone= attributes.get("phone")!=null?attributes.get("phone").toString():" ";
			//邮箱
			String  email= attributes.get("email")!=null?attributes.get("email").toString():" ";
			out.println("编号:" + id);
			out.println("<br/>");
			out.println("用户名:" + username);
			out.println("<br/>");
			out.println("真实名:" + realname);
			out.println("<br/>");
			out.println("密码:" + pwd);
			out.println("<br/>");
			out.println("企业编号:" + corp_id);
			out.println("<br/>");
			out.println("创建时间:" + create_date);
			out.println("<br/>");
			out.println("创建人:" + createdby);
			out.println("<br/>");
			out.println("更新时间:" + updated_date);
			out.println("<br/>");
			out.println("更新人:" + updatedby);
			out.println("<br/>");
			out.println("用户类型:" + usertype);
			out.println("<br/>");
			out.println("上次登录时间:" + last_login_date);
			out.println("<br/>");
			out.println("状态:" + status);
			out.println("<br/>");
			out.println("电话:" + phone);
			out.println("<br/>");
			out.println("邮箱:" + email);
		%>
		
<br/>
<br/> 

<a href="http://localhost:7070/cas-sample-site1/index.jsp">cas-sample-site1</a>  

<br/>
<br/>
 
<a href="https://sso.shaw.com:8443/cas-server/logout">退出</a>
</body>
</html>
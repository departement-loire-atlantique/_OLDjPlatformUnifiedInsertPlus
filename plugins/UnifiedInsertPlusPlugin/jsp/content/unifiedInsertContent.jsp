<%@page import="com.jalios.jcms.unifiedinsert.InsertionContext"%><%
request.setAttribute(InsertionContext.UNIFIED_INSERT_ATTR, Boolean.TRUE);
request.setAttribute(InsertionContext.UNIFIED_INSERT_TRIGGER_CLASS_ATTR, "unifiedinsert-media");
%><%@include file="/work/pubChooser.jsp" %>
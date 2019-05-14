<%--
  @Summary: Template used to display Article using media manager
--%><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ page import="com.jalios.jcms.taglib.card.*" %><%
%><%@ include file='/jcore/media/mediaTemplateInit.jspf' %><%

if (data == null || !(data instanceof Content)) {
  return;
}
Content content = (Content) data;


// Récupère l'usage embed si il éxiste pour ce type de contenu
// sinon usage full
String usage = content.getTemplate("embed").contains(".dummy") ? "full" : "embed";

%>

<jalios:include pub="<%= content %>" usage="<%= usage %>"/>
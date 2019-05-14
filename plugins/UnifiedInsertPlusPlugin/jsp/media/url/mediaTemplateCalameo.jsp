<%--
  @Summary: Template used to display Calameo
--%><%@ page import="java.util.regex.Matcher" %><%
%><%@ page import="java.util.regex.Pattern" %><%
%><%@ page import="com.jalios.jcms.taglib.ThumbnailTag" %><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ include file='/jcore/media/mediaTemplateInit.jspf' %><%
  
  if (Util.isEmpty(url)){
    return;
  }
  
  String idRegex = channel.getProperty("media.template.default.URL.calameo.id-regex", "\\/photos\\/((:?[a-zA-Z0-9@]*\\/*)*)");
  Pattern idPattern = Pattern.compile(idRegex, Pattern.CASE_INSENSITIVE);
  Matcher matcher = idPattern.matcher(url);
  if (!matcher.find()) {
    return;
  }

  String id = matcher.group(1);
  if (Util.isEmpty(id)){
    return;
  }
  

  String cssClass = encodeForHTMLAttribute(getUntrustedStringParameter("class", "embed-responsive-16by9"));
  String cssStyle = encodeForHTMLAttribute(getUntrustedStringParameter("style", ""));
  
  cssClass = cssClass != null ? "class=\"calameo embed-responsive "+cssClass+"\""   : "class=\"calameo embed-responsive embed-responsive-16by9\"";
  cssStyle = cssStyle != null ? "style=\""+cssStyle+"\"" : "";
  
%>
<div <%= cssClass %> <%= cssStyle %>>
 <iframe class="embed-responsive-item"
    src="//v.calameo.com/?bkcode=<%= id %>"
    frameborder="0"
    allowfullscreen></iframe>
</div>
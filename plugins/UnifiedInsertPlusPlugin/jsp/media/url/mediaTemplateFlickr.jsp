<%--
  @Summary: Template used to display Flickr
--%><%@ page import="java.util.regex.Matcher" %><%
%><%@ page import="java.util.regex.Pattern" %><%
%><%@ page import="com.jalios.jcms.taglib.ThumbnailTag" %><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ include file='/jcore/media/mediaTemplateInit.jspf' %><%
  
  if (Util.isEmpty(url)){
    return;
  }
  
  String idRegex = channel.getProperty("media.template.default.URL.flikr.id-regex", "\\/photos\\/((:?[a-zA-Z0-9@]*\\/*)*)");
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
  
  cssClass = cssClass != null ? "class=\"flickr embed-responsive "+cssClass+"\""   : "class=\"flickr embed-responsive embed-responsive-16by9\"";
  cssStyle = cssStyle != null ? "style=\""+cssStyle+"\"" : "";
  
%>
<div <%= cssClass %> <%= cssStyle %>>
 <iframe class="embed-responsive-item"
    src="//www.flickr.com/photos/<%= id %>/player"
    frameborder="0"
    allowfullscreen></iframe>
</div>
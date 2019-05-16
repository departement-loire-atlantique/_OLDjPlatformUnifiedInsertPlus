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
  
%>
 <iframe class=""
    src="//w.soundcloud.com/player/?url=<%=url%>&amp;color=ff6600&amp;auto_play=false&amp;show_artwork=true"
    frameborder="no" width="100%" height="166" scrolling="no" allowfullscreen></iframe>

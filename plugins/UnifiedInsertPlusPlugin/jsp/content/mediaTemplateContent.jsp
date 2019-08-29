<%--
  Template utilisé pour afficher un contenu avec gabarit "embed" au sein d'une zone wysiwyg, via l'insertion unifiée.
  Si le gabarit "embed" n'est pas trouvé, l'affichage n'est pas rendu.
  En effet si on utilise le gabarit "full" pour le rendu via l'insertion unifée, la publication courante devient la dernière publication incluse.
  Cela a des effets de bords sur le module SEO notamment.  
--%><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ page import="com.jalios.jcms.taglib.card.*" %><%
%><%@ include file='/jcore/media/mediaTemplateInit.jspf' %><%

if (data == null || !(data instanceof Content)) {
  return;
}
Content content = (Content) data;
String templateFile=content.getTemplatePath("embed",true);
%>
<jalios:if predicate='<%=content.getTemplate("embed").contains(".embed")%>'>
    <%request.setAttribute("obj",content); %>
    <jalios:include jsp="<%= templateFile %>"/>
</jalios:if>
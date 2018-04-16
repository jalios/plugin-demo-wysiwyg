<%--
  @Summary: Template used to display Article using media manager
--%><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ page import="com.jalios.jcms.taglib.card.*" %><%
%><%@ include file='/jcore/media/mediaTemplateInit.jspf' %><%

if (data == null || !(data instanceof Article)) {
  return;
}
Article article = (Article) data;
%>
<jalios:cards mode="<%= CardsDisplayMode.INLINE %>">
  <jalios:cardData data="<%= article %>"/>
</jalios:cards>

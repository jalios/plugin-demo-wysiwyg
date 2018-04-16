<%@page import="com.jalios.jcms.handler.QueryHandler"%><%
%><%@ page import="com.jalios.jcms.taglib.card.*" %><%
%><%@ page import="com.jalios.jcms.unifiedinsert.*" %><%
request.setAttribute("UnifiedInsert", Boolean.TRUE);
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><jsp:useBean id="articleQH" scope="page" class="com.jalios.jcms.handler.QueryHandler"><%
  %><jsp:setProperty name="articleQH" property="request"  value="<%= request %>"/><%
  %><jsp:setProperty name="articleQH" property="response" value="<%= response %>"/><%
  %><jsp:setProperty name="articleQH" property="sort" value="mdate"/><%
  %><jsp:setProperty name="articleQH" property="*" /><%
  %><jsp:setProperty name="articleQH" property="types" value="<%= new String[] { Article.class.getName() }  %>"/><%
%></jsp:useBean><%

QueryResultSet qrs = articleQH.getResultSet();

%><jalios:pager name='articlePagerHandler' declare='true' action='init'
                size='<%= qrs.getResultSize() %>' sort='<%= articleQH.getSort() %>'/><%

if (!jcmsContext.isAjaxRequest()) {
  jcmsContext.addJavaScript("js/jalios/ux/jalios-unifiedinsert.js");
  %><%@ include file='/jcore/doEmptyHeader.jspf' %><%
}
%>
<div class="article-gallery article-unifiedinsert ajax-refresh-div"
     data-jalios-ajax-refresh-url="<%= ServletUtil.getResourcePath(request) %>">
 <br/>
 <div class="container-fluid">
 
  <jalios:cards mode="<%= CardsDisplayMode.DECK %>">
    <jalios:foreach name="article" type="Article" collection="<%= qrs.getAsSortedSet(articleQH.getSort(), articleQH.getReverse()) %>"
                    skip="<%= articlePagerHandler.getStart() %>" max="<%= articlePagerHandler.getPageSize() %>">
    <%
      String articleCardCss = "unifiedinsert-media clickable";
      DataAttribute articleCardDataAttribute = new DataAttribute().addData("data-jalios-source", article.getId());
    %>
    <jalios:cardData data="<%= article %>" css="<%= articleCardCss %>" dataAttribute="<%= articleCardDataAttribute %>"/>
    </jalios:foreach>
  </jalios:cards>
  
  <jalios:pager name='articlePagerHandler'/>
  
 </div> 
<%@ include file='/jcore/doAjaxFooter.jspf' %>
</div>
<%
if (!jcmsContext.isAjaxRequest()) {
  %><%@ include file='/jcore/doEmptyFooter.jspf' %><%
}
%>

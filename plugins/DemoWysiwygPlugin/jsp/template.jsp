<%@ page import="com.jalios.jcms.unifiedinsert.*" %><%
request.setAttribute(InsertionContext.UNIFIED_INSERT_ATTR, Boolean.TRUE);
%><%@ include file='/jcore/doInitPage.jspf' %><%

jcmsContext.addJavaScript("js/jalios/ux/jalios-unifiedinsert.js");

jcmsContext.addCSSHeader("plugins/DemoWysiwygPlugin/css/template.css");
jcmsContext.addJavaScript("plugins/DemoWysiwygPlugin/js/template.js");

%><%@ include file='/jcore/doEmptyHeader.jspf' %>
<div class="navbar-placeholder"></div>

  <%-- NAVBAR --%>
  <div class="mb-nav navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <ul class="nav navbar-form navbar-nav navbar-right">      
        <li>
          <button type="submit" name="opValidate" value="true" class="btn btn-primary unifiedinsert-template">
            <%= glp("ui.com.btn.validate-close") %>
          </button>          
        </li>
      </ul>   
    </div>
  </div>

  <%-- TEMPLATE Content --%>
  <div id="template" class="container-fluid">
    <%= Util.getString(request.getAttribute("UnifiedInsertTemplate"), "") %>
  </div>
  
<%@ include file='/jcore/doEmptyFooter.jspf' %>
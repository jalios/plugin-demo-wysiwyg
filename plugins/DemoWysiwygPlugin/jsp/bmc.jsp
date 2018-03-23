<%@ page import="com.jalios.jcms.unifiedinsert.*" %><%
request.setAttribute(InsertionContext.UNIFIED_INSERT_ATTR, Boolean.TRUE);
%><%@ include file='/jcore/doInitPage.jspf' %><%

jcmsContext.addCSSHeader("plugins/DemoWysiwygPlugin/css/bmc.css");

%><jalios:buffer name="template">
    <table class="table table-bordered bmc">
    
      <tr>
        <th colspan="2" style="width: 25%;"><%= glp("unified-insert.items.bmc.content.keypartners") %></th>
        <th colspan="2" style="width: 25%;"><%= glp("unified-insert.items.bmc.content.keyactivities") %></th>
        <th colspan="2" style="width: 25%;"><%= glp("unified-insert.items.bmc.content.valueproposition") %></th>
        <th colspan="2" style="width: 25%;"><%= glp("unified-insert.items.bmc.content.customerrelationships") %></th>
        <th colspan="2" style="width: 25%;"><%= glp("unified-insert.items.bmc.content.customersegments") %></th>
      </tr>
      <tr style="height: 28%;">
        <td colspan="2" rowspan="3" class="bmc-elm bmc-elm-keypartners contenteditable"></td>
        <td colspan="2" class="bmc-elm bmc-elm-keyactivities contenteditable"></td>
        <td colspan="2" rowspan="3" class="bmc-elm bmc-elm-valueproposition contenteditable"></td>
        <td colspan="2" class="bmc-elm bmc-elm-customerrelationships contenteditable"></td>
        <td colspan="2" rowspan="3" class="bmc-elm bmc-elm-customersegments contenteditable"></td>
      </tr>
      
      <tr>
        <th colspan="2"><%= glp("unified-insert.items.bmc.content.keyresources") %></th>
        <th colspan="2"><%= glp("unified-insert.items.bmc.content.channels") %></th>
      </tr>
      <tr style="height: 28%;">
        <td colspan="2" class="bmc-elm bmc-elm-keyresources contenteditable"></td>
        <td colspan="2" class="bmc-elm bmc-elm-channels contenteditable"></td>
      </tr>
      
      <tr>
        <th colspan="5"><%= glp("unified-insert.items.bmc.content.coststructure") %></th>
        <th colspan="5"><%= glp("unified-insert.items.bmc.content.revenuestreams") %></th>
      </tr>
      <tr style="height: 28%;">
        <td colspan="5" class="bmc-elm bmc-elm-coststructure contenteditable"></td>
        <td colspan="5" class="bmc-elm bmc-elm-revenuestreams contenteditable"></td>
      </tr>
      
    </table>
</jalios:buffer>
<% request.setAttribute("UnifiedInsertTemplate", template); %>
<jalios:include jsp="/plugins/DemoWysiwygPlugin/jsp/template.jsp"/>
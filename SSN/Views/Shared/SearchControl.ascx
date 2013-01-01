<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<% using (Html.BeginForm("Find","Friends")) {%>
<%: Html.TextBox("userFirstName") %>
<input type="submit" value="Find User" />
    <% } %>

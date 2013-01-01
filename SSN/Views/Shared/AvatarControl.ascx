<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<SSN40.Models.Users>" %>
 <% if (Model.Avatars.Count > 0)
    { %>
  <img src="../../Content/avatars/<%: Model.Avatars.Single().Avatar %>" alt="Avatar"/>
 <%} 
else {  %>
  <img src="../../Content/avatars/default.jpg" alt="Avatar"/>
<% } %>

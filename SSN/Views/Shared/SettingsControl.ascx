<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="secondary_links">
<%: Html.ActionLink("Profile", "Settings", "Profile")%>
<%: Html.ActionLink("Security", "ChangePassword", "Account")%> 
<%: Html.ActionLink("Avatar", "Avatar", "Profile")%> 
</div>
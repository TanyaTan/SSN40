<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="moder_block">
<h3>Moderator block</h3>

<%: Html.ActionLink("All users", "All", "Profile") %> |
<%: Html.ActionLink("All messages", "All", "Messages") %>
</div>
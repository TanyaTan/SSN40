<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.Users>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: Model.FirstName %> <%: Model.LastName %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Model.FirstName %> <%: Model.LastName %></h2>

        <div class="user_friends">
            <%: Html.Partial("FriendsControl") %>
        </div>

        <div class="avatar">
           <%: Html.Partial("AvatarControl") %>

            <% if (Model.Login.Trim() != User.Identity.Name) { %>
                     <%: Html.Partial("ProfileLinksControl") %>
           <% } %>
        </div>
        <% if (Model.RoleID == 2) { %>
        <%: Html.Partial("ModerMenuControl") %>
        <% } %>
</asp:Content>

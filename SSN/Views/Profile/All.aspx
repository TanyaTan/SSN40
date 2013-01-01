<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Users>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	All
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>All Users</h2>

    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            
            <th>
                ID
            </th>
            <th>
                Login
            </th>
            <th>
                Email
            </th>
            <th>
                FirstName
            </th>
            <th>
                LastName
            </th>
            <th>
                Role
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.Login %>
            </td>

            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.FirstName %>
            </td>
            <td>
                <%: item.LastName %>
            </td>
            <td>
                <%: item.Roles.Role %>
            </td>
            <td>
                <%: Html.ActionLink("View Profile", "Index","Profile", new { login=item.Login.Trim() },"")%> <br />
                <%: Html.ActionLink("View User Inbox Messages", "Inbox", "Messages", new { id = item.ID }, "")%> <br />
                <%: Html.ActionLink("View User Otbox Messages", "Outbox", "Messages", new { id = item.ID }, "")%> <br />
                <%: Html.ActionLink("Send Message", "Send","Messages", new { id=item.ID },"") %> <br />
                <%: Html.ActionLink("Delete user", "Delete","Profile", new { id = item.ID },"")%><br />
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Messages>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	All
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>All Messages</h2>

    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            
            <th>
                ID
            </th>
            <th>
                Subject
            </th>
            <th>
                Text
            </th>
            <th>
                Date
            </th>
            <th>
                Sender 
            </th>
            <th>
                Receiver 
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>

            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.Subject %>
            </td>
            <td>
                <%: item.Text %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Date) %>
            </td>
            <td>
                <%: item.Users.FirstName %> <%: item.Users.LastName %>
            </td>
            <td>
                <%: item.Users1.FirstName %> <%: item.Users1.LastName %>
            </td>
            <td>
                <%: Html.ActionLink("View Messages History", "History", "Messages", new { id = item.ID })%> <br />
                <%: Html.ActionLink("Remove Message", "Remove", "Messages", new { id = item.ID }, "")%>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>


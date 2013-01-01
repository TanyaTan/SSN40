<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Messages>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	History
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>History</h2>

    <table  cellpadding="0" cellspacing="0" border="0">

    <% foreach (var item in Model) { %>
    
        <tr>

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

        </tr>
    
    <% } %>

    </table>
    
    <p>
        <%: Html.ActionLink("Remove Message history", "RemoveHistory", new { id = Model.First().SenderID, us=Model.First().ReceiverID })%>
    </p>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Users>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Find
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Find</h2>

    <table cellpadding="0" cellspacing="0" border="0">

    <% foreach (var item in Model) { %>
    
        <tr>

            <td>
                <%: item.FirstName %>
            </td>
            <td>
                <%: item.LastName %>
            </td>
            <td>
          
                <%: Html.ActionLink("View Profile", "Index", "Profile", new { login=item.Login.Trim() }, "")%>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>


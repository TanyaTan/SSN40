<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Users>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Friends
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <h2>Friends</h2>
    <% if (Model.Count() > 0)
       {%>
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
            <%: Html.ActionLink("View Profile", "Index", "Profile", new { login = item.Login.Trim() }, "")%> <br />
             <%: Html.ActionLink("Send Message", "Send", "Messages", new { id = item.ID }, "")%><br />
              <%: Html.ActionLink("Remove From Friends", "Remove", "Friends", new { id = item.ID }, "")%>
            </td>
        </tr>
    
    <% } %>

    </table>
       <% }
       else
       { %>

    <p>U don't have requests</p>
    <%} %>
    
        <%: Html.ActionLink("Find New Friends", "Find") %>
</asp:Content>


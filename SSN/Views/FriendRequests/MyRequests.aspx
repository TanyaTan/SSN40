<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.FriendRequests>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	My Friend Requests
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>My Friend Requests</h2>

    <div class="secondary_links">
    <%: Html.ActionLink("Friend Requests", "Index", "FriendRequests")%> 
    <%: Html.ActionLink("My Requests", "MyRequests", "FriendRequests")%>
    </div>
    <% if (Model.Count() > 0)
       {%>
    <table cellpadding="0" cellspacing="0" border="0">
    <% foreach (var item in Model)
       { %>
    
        <tr>

            <td>
                <%: item.Users1.FirstName%>
                <%: item.Users1.LastName%>
            </td>
            <td>
                <%: item.RequestMessage%>
            </td>
             <td>
                <%: Html.ActionLink("Remove from Requests", "Remove", "FriendRequests", new {id=item.KeeperID},"")%> <br />
                <%: Html.ActionLink("View Profile", "Index", "Profile", new { login = item.Users1.Login.Trim() }, "")%>
            </td>
        </tr>
    
    <% } %>

    </table>
    <% }
       else
       { %>

    <p>U don't have requests</p>
    <%} %>
</asp:Content>


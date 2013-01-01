<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SSN40.Models.Messages>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: ViewData["title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: ViewData["title"] %></h2>

    <div class="secondary_links">
    <%: Html.ActionLink("Inbox", "Inbox") %>
    <%: Html.ActionLink("Outbox", "Outbox") %>

    </div>

    <% if (Model.Count() > 0)
       { %>
    <table cellpadding="0" cellspacing="0" border="0">


    <% foreach (var item in Model)
       { %>
    
        <tr>
            <td>
                <%: item.Subject%>
            </td>
            <td>
                <%: Html.Encode(item.Text)%>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Date)%>
            </td>
            <td>
            <% if (ViewData["title"] == "Inbox")
               { %>
                <%: item.Users.FirstName%> 
                <%: item.Users.LastName%>
                <%}
               else
               { %>
                <%: item.Users1.FirstName%> 
                <%: item.Users1.LastName%>
                <% } %>
            </td>
            <td>

            <% if (ViewData["title"] == "Inbox")
               { %>
            <%: Html.ActionLink("Reply", "Send", new { id = item.SenderID })%><br />
            <%} %>
            <%: Html.ActionLink("View Message history", "History", new { id = item.SenderID, us = item.ReceiverID })%><br />
            <%: Html.ActionLink("Remove Message", "Remove", new { id = item.ID })%>
            </td>
        </tr>
    
    <% } %>

    </table>
    <%} else {%>
       <p>U don't have messages.</p>
       <% } %>
</asp:Content>


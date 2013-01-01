<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.RemindPasswordModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	RemindPassword
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>RemindPassword</h2>
     <% using (Html.BeginForm()) { %>
       
        <div>

         <%: Html.ValidationSummary(true, "Не удалось выполнить вход. Исправьте ошибки и повторите попытку.") %>
                <div class="editor-label">
                <label>E-mail</label>
                    <%: Html.TextBoxFor(m => m.Email) %><br />
                    <%: Html.ValidationMessageFor(m => m.Email) %>
                </div>

                <div class="editor-label">
                  <input type="submit" value="Remind Password" />
                </div>

                    
                    <div class="sign_links">
                    <%: Html.ActionLink("Sign In", "LogOn", "Account") %> 
                    <%: Html.ActionLink("Registration", "Register", "Account") %>
                    </div>
        </div>
    <% } %>

</asp:Content>

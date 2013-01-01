<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.LogOnModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    SSN
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Заходите, не стесняйтесь!</h2>

    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "Не удалось выполнить вход. Исправьте ошибки и повторите попытку.") %>
        <div>
           
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName) %>
                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password) %>
                    <%: Html.ValidationMessageFor(m => m.Password) %>
                </div>

                 <div class="editor-label">
                    <input type="submit" value="Enter" />
                </div>
                
                    <div class="sign_links">
                    <%: Html.ActionLink("Registration", "Register", "Account") %>
                    <%: Html.ActionLink("Forgot Password?", "RemindPassword", "Account") %>

                    </div>
        </div>
    <% } %>
</asp:Content>

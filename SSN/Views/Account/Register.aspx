<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.RegisterModel>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Registration
</asp:Content>

<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registration</h2>

    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "Не удалось создать учетную запись. Исправьте ошибки и повторите попытку.") %>
        <div>
               
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName) %>
                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.Email) %>
                    <%: Html.TextBoxFor(m => m.Email) %>
                    <%: Html.ValidationMessageFor(m => m.Email) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password) %>
                    <%: Html.ValidationMessageFor(m => m.Password) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.ConfirmPassword) %>
                    <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                    <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.FirstName) %>
                    <%: Html.TextBoxFor(m => m.FirstName) %>
                    <%: Html.ValidationMessageFor(m => m.FirstName)%>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.LastName) %>
                    <%: Html.TextBoxFor(m => m.LastName) %>
                    <%: Html.ValidationMessageFor(m => m.LastName)%>
                </div>

                <div class="editor-label">
                    <input type="submit" value="Register" />
                </div>

                <div class="sign_links">
                    <%:Html.ActionLink("Back To Main", "LogOn") %>
                </div>

        </div>
    <% } %>
</asp:Content>

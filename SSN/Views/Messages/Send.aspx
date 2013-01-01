<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.Messages>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Send Message
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>SendMessage</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

                  
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Subject) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Subject) %>
                <%: Html.ValidationMessageFor(model => model.Subject) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Text) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Text) %>
                <%: Html.ValidationMessageFor(model => model.Text) %>
            </div>

                <input type="submit" value="Send" />

    <% } %>


</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.Users>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Profile</h2>

    <% Html.RenderPartial("SettingsControl"); %>


    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
            <%: Html.HiddenFor(model => model.Login) %>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.DisplayTextFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FirstName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.FirstName) %>
                <%: Html.ValidationMessageFor(model => model.FirstName) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.LastName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.LastName) %>
                <%: Html.ValidationMessageFor(model => model.LastName) %>
            </div>
            
  
                <input type="submit" value="Save" />


    <% } %>

</asp:Content>


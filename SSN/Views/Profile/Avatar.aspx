<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Profile.Master" Inherits="System.Web.Mvc.ViewPage<SSN40.Models.Avatars>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Avatar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Avatar</h2>

    <% Html.RenderPartial("SettingsControl"); %>

    <div class="avatar">
    <% if (Model != null)
       { %>
    
    <img alt="avatar" src="../../Content/avatars/<%: Model.Avatar %>" />
    <%: Html.ActionLink("Remove Avatar", "RemoveAvatar", "Profile", new { id = Model.ID }, "")%>
    
    <% }
       else
       { %>
    <img alt="avatar" src="../../Content/avatars/default.jpg" />            
           
       <%} %>
    </div>        
       <%    using (Html.BeginForm("Avatar", "Profile", FormMethod.Post, new { enctype = "multipart/form-data" }))
       {%>

        <input type="file" name="avatar" />
        <input type="submit" value="Create" />

    <% } %>


</asp:Content>


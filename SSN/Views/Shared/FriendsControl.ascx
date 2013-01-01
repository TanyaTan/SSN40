<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<SSN40.Models.Users>" %>
<h3>Friends</h3>
<% var friends = Model.Friends.ToList();
       foreach (var item in friends)
       { %>
    <div class="friend">
    <img alt="avatar" src="../../Content/avatars/<%: (item.Users1.Avatars.Count > 0) ? item.Users1.Avatars.Single().Avatar : "default.jpg"  %>" />
       <%: Html.ActionLink(item.Users1.FirstName + " " + item.Users1.LastName, "Index", "Profile", new { login = item.Users1.Login.Trim() }, "")%> 
    </div>
  <%  }  %>

  <% var friendsK = Model.Friends1.ToList();
     foreach (var item in friendsK)
     { %>
    <div class="friend">
        <img alt="avatar" src="../../Content/avatars/<%: (item.Users.Avatars.Count > 0) ? item.Users.Avatars.Single().Avatar : "default.jpg"  %>" />
             
       <%: Html.ActionLink(item.Users.FirstName.Trim() + " " + item.Users.LastName.Trim(), "Index", "Profile", new { login = item.Users.Login.Trim() }, "")%> 
    </div>
  <%  }
      if (friendsK.Count() == 0 && friends.Count() ==0)
      { %>
   <p>You don't have friends yet.</p>
     <%  } %>
     <div class="find">
      <%: Html.ActionLink("Find Friends", "Find", "Friends") %>
      </div>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<SSN40.Models.Users>" %>
<% int userID = int.Parse(Session["userID"].ToString());
   object frHolder, frFriend, rqSender, rqKeeper;
   try
   { frHolder = Model.Friends.Single(u => u.FriendID == userID);  }
   catch
   { frHolder = null; }
   try
   { frFriend = Model.Friends1.Single(u => u.HolderID == userID); }
   catch
   { frFriend = null; }
   try
   { rqSender = Model.FriendRequests1.Single(u => u.KeeperID == userID); }
   catch
   { rqSender = null; }
   try
   { rqKeeper = Model.FriendRequests1.Single(u => u.SenderID == userID); }
   catch
   { rqKeeper = null; }
   if (frHolder != null || frFriend != null)
   {%>
<%: Html.ActionLink("Send Message", "Send", "Messages", new {id=Model.ID },"")%>
<%: Html.ActionLink("Remove From Friend", "Remove", "Friends", new {id=Model.ID },"") %>

<% }   else if (rqSender != null || rqKeeper != null)   {%>
<%: Html.ActionLink("Remove Friend Request", "Remove", "FriendRequests", new { id = Model.ID }, "")%>

<% }  else {%>
<%: Html.ActionLink("Send Friend Request", "Send", "FriendRequests", new {id=Model.ID },"") %>
<% }%>
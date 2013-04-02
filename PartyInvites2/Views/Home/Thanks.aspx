<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<PartyInvites2.Models.GuestResponse>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Thanks</title>
</head>
<body>
    <h1>Thank you, <%= Html.Encode(Model.Name) %>!</h1>
    <% if (Model.WillAttend == true)
       { %>
       It's great that you're coming. The drinks are already in the fridge!
    <% } 
       else
       {%>
       Sorry to hear you can't make it, but thanks for letting us know.
    <% } %>
</body>
</html>

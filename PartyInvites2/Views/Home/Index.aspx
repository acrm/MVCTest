<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Index</title>
</head>
<body>
    <p>
    <% =ViewData["greeting"] %>! We're going to have an exciting party. 
    (To do: sell it better. Add picture or something.)        
    </p>
    <%= Html.ActionLink("RSVP Now", "RSVPForm") %>
</body>
</html>

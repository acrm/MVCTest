<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>RSVPForm</title>
</head>
<body>
    <h1>RSVP</h1>
    <% using (Html.BeginForm())
      { %>
        <p>Tour name: <%=Html.TextBox("Name") %></p>
        <p>Tour email: <%=Html.TextBox("Email") %></p>
        <p>Tour phone: <%=Html.TextBox("Phone") %></p>
        <p>
            Will you attend?
            <%= Html.DropDownList("WillAttend", new [] {
                    new SelectListItem {Text = "Yes, I'll be there",
                                        Value = bool.TrueString},
                    new SelectListItem {Text = "No, I can't come",
                                        Value = bool.FalseString}
                }, "Choose an option") %>
        </p>
        <input type="submit" value="Submit RSVP" />
    <% } %>
</body>
</html>

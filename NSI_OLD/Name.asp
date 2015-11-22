<html>
<body>
<form action="Name.asp" method="get">
Your name: <input type="text" name="fname" size="20" />
<input type="submit" value="Submit" />
</form>
<%
dim fname
fname=Request.QueryString("fname")
If fname<>"" Then
      Response.Write("Hello " & fname & "!<br />")
      Response.Write("Access Denied")
End If
%>
</body>
</html>
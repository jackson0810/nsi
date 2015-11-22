<html>
<body>
<form action="demo_reqquery.asp" method="get">
Password: <input type="text" name="pswd" size="20" />
<input type="submit" value="Submit" />
</form>
<%
dim pswd
pswd=Request.QueryString("pswd")
If fname<>"" Then
      Response.Write("You typed: " & pswd & "!<br />")
End If
%>
</body>
</html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%urunID=request.form("id1")
ad=request.form("ad1")
marka=request.form("marka1")
aFiyat=request.form("al1")
sFiyat=request.form("sat1")
yil=request.form("yil1")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblUrun WHERE urunID=" & urunID )
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblUrun (urunID, ad, marka, aFiyat, sFiyat, yil) VALUES(" & urunID & ", '" & ad & "', '" & marka & "', " & aFiyat & ", " & sFiyat & ", " & yil & ")")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu ID baþka bir yayinevi tarafýndan kullanýlmaktadýr.")
	window.location = 'index.asp'</script>
<%end if%>


</body>
</html>

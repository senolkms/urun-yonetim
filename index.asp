<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function urunKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('id1').value=='')
			{
			alert("ID Alan� Bo� Olamaz!");
			document.getElementById('id1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ad1').value=='')
			{
			alert("Ad Alan� Bo� Olamaz!");
			document.getElementById('ad1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('marka1').value=='')
			{
			alert("Marka Alan� Bo� Olamaz!");
			document.getElementById('markal').focus();
			returnVAL =false;
			}
		else if (document.getElementById('al1').value=='')
			{
			alert("Al�� Fiyat� Alan� Bo� Olamaz!");
			document.getElementById('al1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sat1').value=='')
			{
			alert("Sat�� Fiyat� Alan� Bo� Olamaz!");
			document.getElementById('sat1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yil1').value=='')
			{
			alert("Y�l Alan� Bo� Olamaz!");
			document.getElementById('yil1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
		</script>
</head>

<body>
<table width="650" align="center">
	<tr>
		<td valign="top">
			<form name="urun" method="post" onsubmit="return urunKontrol()" action="urunRegister.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">�r�n ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="id1" name="id1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ad</td>
					<td><input type="Text" id="ad1" name="ad1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Marka</td>
					<td>
					<%Set conn = Server.CreateObject("ADODB.Connection")
						conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
						<%Set rs= conn.Execute("SELECT * FROM tblUrun")%>
						<select id="marka1" name="marka1">
							<option>Marka Se�iniz</option>
						<%Do while Not rs.eof%>
							<option value="<%=rs("urunID")%>"><%=rs("marka")%></option>
						<%rs.MoveNext
						Loop%>
						</select>
					</td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Al�� Fiyat�</td>
					<td><input type="Text" id="al1" name="al1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Sat�� Fiyat�</td>
					<td><input type="Text" id="sat1" name="sat1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Y�l</td>
					<td><input type="Text" id="yil1" name="yil1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"></td>
				</tr>
			
			</table>
			</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="8"><font color="#ff0000" style="font-weight: bold;">�r�nler</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>ID</b></td>
					<td><b>Ad</b></td>
					<td><b>Marka</b></td>
					<td><b>Al�� Fiyat�</b></td>
					<td><b>Sat�� Fiyat�</b></td>
					<td><b>Y�l</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM tblUrun")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("urunID")%></td>
						<td><%=rs("ad")%></td>
						<td><%=rs("marka")%></td>
						<td><%=rs("aFiyat")%></td>
						<td><%=rs("sFiyat")%></td>
						<td><%=rs("yil")%></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
		<td>


</body>
</html>

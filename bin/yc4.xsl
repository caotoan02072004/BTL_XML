<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<html>
		<head>
			<title>Danh sách nhân viên</title>
			<style>
				table{
				width: 100%;
				}
				.title-heading td{
				padding: 20px;
				}
				.title-heading{
				background: lightblue;
				}
				.text-center{
					text-align: center;
				}
			</style>
		</head>
		<body>
			<h1 class="text-center">Danh sách nhân viên</h1>
			<table border="1" cellspacing="0" cellpadding="10">
				<tr style="background-color: lightblue">
					<td>Employee_id</td>
					<td>First_name</td>
					<td>Last_name</td>
					<td>Email</td>
					<td>Phone_number</td>
					<td>Date</td>
					<td>Job_id</td>
					<td>Salary</td>
					<td>Manager_id</td>
				</tr>
				<xsl:for-each select="Employees/Employee">
					<xsl:if test="Manager_id = 108">
					<tr style="background-color: #ebebeb">
						<td><xsl:value-of select="Employee_id"/></td>
						<td><xsl:value-of select="First_name"/></td>
						<td><xsl:value-of select="Last_name"/></td>
						<td><xsl:value-of select="Email"/></td>
						<td><xsl:value-of select="Phone_number"/></td>
						<td><xsl:value-of select="Date"/></td>
						<td><xsl:value-of select="Job_id"/></td>
						<td><xsl:value-of select="Salary"/></td>
						<td><xsl:value-of select="Manager_id"/></td>
					</tr>
				</xsl:if>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
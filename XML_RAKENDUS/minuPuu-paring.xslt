<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<strong>kõik andmed tabelina</strong>
		<style>
			table, th, td {
			border:1px solid black;
			background-color: #FCDBFF;
			}
		</style>
		<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Vanus</th>
				<th>Riik</th>
				<th>Lapsed</th>
			</tr>
			<xsl:for-each select="//sugulane">
				<xsl:sort select="number(@aasta)" order="ascending"/>
				<tr>
					<td>
						<xsl:value-of select="nimi"/>
					</td>
					<td>
						<xsl:value-of select="2025 - number(@aasta)"/>
					</td>
					<td>
						<xsl:value-of select="@elukoht"/>
					</td>
					<td>
						<xsl:value-of select="count(lapsed/sugulane)"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
    </xsl:template>
</xsl:stylesheet>

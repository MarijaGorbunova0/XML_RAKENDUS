<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<strong>Näitame kõik nimed</strong>
		<ul>
			<xsl:for-each select ="//inimene">
				<xsl:sort select ="@aasta" order="descending"/>
				<!--descending - suuremast väiksemani-->
				<li>
					<xsl:value-of select="nimi"/>,
					<xsl:value-of select="@aasta"/>:
					<xsl:value-of select ="concat(nimi, ', ', @aasta)"/>, vanus
					<xsl:value-of select ="2025-@aasta"/>
					
				</li>
			</xsl:for-each>
		</ul>
		<strong>kõik andmed tabelina</strong>
		<style>
			table, th, td {
			border:1px solid black;
			}
		</style>
		<table>
			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:value-of select = "../../nimi"/>
					</td>
					<td>
						<xsl:value-of select="nimi"/>,
					</td>
					<td>
						<xsl:value-of select="@aasta"/>:
					</td>
					<td>
						<xsl:value-of select ="2025-@aasta"/>
					</td>

				</tr>
				
			</xsl:for-each>
		</table>
		<strong>Iga inimese kohta näita mitmendal oma vanaema sünni</strong>
		<ul>
			<xsl:for-each select ="//inimene">
			<li>
					<xsl:value-of select ="nimi"/>
					<xsl:if test="../..">
						- lapsevanema vanus oli
						<xsl:value-of select="../../@aasta - aasta"/>aastat vana
					</xsl:if>
			</li>
			</xsl:for-each>
		</ul>
		<strong>
			<ol>
				<li>Count() - kogus
				<xsl:value-of select ="count(//nimi)"/>
				</li>
				<li>
					substring() - eraldame kolm esimest tähte nimest
					<xsl:for-each select="//inimene">
						<xsl:value-of select ="substring(nimi, 0, 3)"/>,
					</xsl:for-each>
				</li>
				<li>
					substring() - eraldame kolm viimast esimest tähte nimest
					<xsl:for-each select="//inimene">
						<xsl:value-of select ="substring(nimi, string-length(nimi)-2, 3)"/>,
					</xsl:for-each>
				</li>
				<li>starts-with</li>
				<xsl:for-each select="//inimene[starts-with(nimi, 'A')]">
					<xsl:value-of select="nimi"/>,
				</xsl:for-each>
			</ol>
		</strong>
    </xsl:template>
</xsl:stylesheet>

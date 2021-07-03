<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Fri Jan 08 12:02:08 CET 2010 -->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:include href="personal2-include1.xsl"/>
	
	<xsl:param name="aaa">2</xsl:param>
	
	<xsl:template match="/">
	
	
	<xsl:message>hello ok</xsl:message>
	
		<xsl:variable name="toto" select="1+1"></xsl:variable>
		<xsl:variable name="titi" select="$toto"></xsl:variable>

		<xsl:variable name="tata" select="//person"></xsl:variable>

		<xsl:variable name="tsts" select="true()"></xsl:variable>

		
		<xsl:variable name="tsts2" select="'aaaa'"></xsl:variable>

				
		<xsl:call-template name="test">
			<xsl:with-param name="aa" select="1"></xsl:with-param>
		</xsl:call-template>
	
		<html>
			<body>
				<xsl:value-of select="$toto"></xsl:value-of>
				<h1><xsl:apply-templates select="//person"/>
</h1>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="test">
		<xsl:param name="aa"></xsl:param>
		<xsl:param name="bb" select="true()"></xsl:param>
	
		<xsl:variable name="ou" select="."></xsl:variable>
		<a>
		
		1111
		
		</a>
	</xsl:template>
	
	
</xsl:stylesheet>

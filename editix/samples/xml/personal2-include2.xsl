<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Fri Jan 15 11:19:00 CET 2010 -->

<!-- Test ok  -->


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="personal.xsl"/>
	<xsl:template match="person" mode="modeTest">
		<xsl:param name="test"/>
		<h1 zzz="eeree" eee="eee" eeeeee="eeee">
			<xsl:value-of select="name/family"/>
			Email 2 : 			
		</h1>

		<hr/>
	</xsl:template>
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

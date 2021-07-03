<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Fri Jan 15 11:19:00 CET 2010 -->

<!-- Test ok -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="person">
		<xsl:variable name="name" select="name/family/text()"/>
		ok
		<xsl:apply-templates select="." mode="modeTest">
			<xsl:with-param name="test">ok</xsl:with-param>
		</xsl:apply-templates>
	</xsl:template>

</xsl:stylesheet>

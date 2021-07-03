<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Fri Jan 08 12:02:08 CET 2010 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	

	<xsl:template match="person">
		<h1>
			<xsl:variable name="name" select="toto"></xsl:variable>
		
			<xsl:value-of select="@id"/>
		</h1>
	</xsl:template>

</xsl:stylesheet>



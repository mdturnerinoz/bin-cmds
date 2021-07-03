<?xml version="1.0" encoding="utf-8"?><!-- New document created with EditiX at Fri Jan 08 12:20:58 CET 2010 --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:output indent="yes" method="xml"/>
	<xsl:template match="/">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="my-page">
					<fo:region-body margin="1cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="my-page">
				<fo:flow flow-name="xsl-region-body">
					<fo:block border-after-color="blue" border-after-style="solid" border-after-width="1px">Personals</fo:block>
					<xsl:apply-templates select="//person"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="person">
		<fo:block color="green">
			<xsl:value-of select="name/family"/>,<xsl:value-of select="name/given"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>

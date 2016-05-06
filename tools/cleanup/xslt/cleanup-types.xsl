<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:vra="http://www.vraweb.org/vracore4.htm" version="2.0">
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" indent="yes"/>
  
    <xsl:template match="*|text()|comment()">
        <xsl:copy>
            <xsl:copy-of select ="@*|text()|comment()"/>
            <xsl:apply-templates select="*"/>
        </xsl:copy>
    </xsl:template>
   
    
    <xsl:template match="vra:technique[@type = 'techniques']">
        <xsl:element name="{local-name()}" namespace="http://www.vraweb.org/vracore4.htm">
            <xsl:copy-of select="@*[local-name() != 'type']"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="vra:worktype[@type = 'worktypes']">
        <xsl:element name="{local-name()}" namespace="http://www.vraweb.org/vracore4.htm">
            <xsl:copy-of select="@*[local-name() != 'type']"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="vra:stylePeriod[@type = 'stylePeriods']">
        <xsl:element name="{local-name()}" namespace="http://www.vraweb.org/vracore4.htm">
            <xsl:copy-of select="@*[local-name() != 'type']"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
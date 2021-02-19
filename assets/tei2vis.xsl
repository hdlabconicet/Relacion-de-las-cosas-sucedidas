<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">
    
    <xsl:output method="text" encoding="utf-8"/>
    
    <!--xsl:template match="/">
    "characters": [
        <xsl:for-each select="distinct-values(//tei:persName)">
            <xsl:sort select='.' />
            {
            "id":
            "name": "<xsl:value-of select="." />",
            "affiliation":
            }<xsl:if test='position() != last()'>,</xsl:if>
        </xsl:for-each>
        <xsl:text>&#x0A;],&#x0A;</xsl:text>
    </xsl:template-->
    
    <xsl:template match="/">
        "scenes": [
        <xsl:apply-templates select="//tei:body"/>
        ]
        }
    </xsl:template>
    
    
    <xsl:template match="tei:div">    
        <xsl:text>  [</xsl:text> 
        <xsl:for-each select="distinct-values(tei:p/tei:persName)">
            "<xsl:value-of select="." />"<xsl:if test='position() != last()'>,</xsl:if>
        </xsl:for-each>
        <xsl:text>&#x0A;],&#x0A;</xsl:text>
    </xsl:template>    

    
</xsl:stylesheet>



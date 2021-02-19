<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all"
    >
    
    <!-- variables globales -->
    <xsl:variable name="out_dir" select="'pero_pages_xsl'"/>
    <xsl:variable name="places_json" select="'perohernandezPlaces.js'"/>
    
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="//tei:body/tei:div"/>
    </xsl:template>
    
    <xsl:template match="tei:body/tei:div/tei:div">
        <!-- guarda resultado en archivos html -->
        <xsl:variable name="page_id" select="replace(@facs, '\.png', '')"/>
        <!--xsl:result-document method="text" encoding="utf-8"
            href="../_{$out_dir}/{$page_id}.pruebaxsl.html" omit-xml-declaration="yes"-->
            <!-- encabezado yaml -->
            <xsl:text>---&#x0A;</xsl:text>
            <xsl:text>layout: textoporpagina&#x0A;</xsl:text>
            <xsl:text>title: </xsl:text><xsl:value-of select="//tei:titleStmt/tei:title"/><xsl:text>&#x0A;</xsl:text>
            <!-- xsl:text>section: </xsl:text><xsl:value-of select="preceding-sibling::tei:head"/><xsl:text>&#x0A;</xsl:text-->
            <xsl:text>section: </xsl:text><xsl:value-of select="../@n"/><xsl:text>&#x0A;</xsl:text>
            <xsl:text>page: página </xsl:text><xsl:value-of select="replace(replace(@facs, '\.png', ''), 'pg_0+', '')"></xsl:value-of><xsl:text>&#x0A;</xsl:text>
            <xsl:text>type: texto&#x0A;</xsl:text>
            <xsl:text>img: </xsl:text><xsl:value-of select="replace(@facs, '\.png', '')"></xsl:value-of><xsl:text>&#x0A;</xsl:text>
            <xsl:text>---&#x0A;</xsl:text>
            
            <xsl:text>&lt;div class="row"&gt;</xsl:text>
            <xsl:text>&lt;div class="col-left"&gt;&#x0A;</xsl:text>
            
            <xsl:apply-templates select="tei:p|tei:head"/>
            
            <xsl:text>&lt;/div&gt;&#x0A;</xsl:text>
            <!-- link al facsímil -->
            <xsl:text>&lt;div class="col-right" style="padding-left: 25px;"&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;a class="no-underline" href="{{site.baseurl}}/assets/img/facsimil/{{page.img}}.png"&gt;&lt;img src="{{site.baseurl}}/assets/img/facsimil/{{page.img}}.png"/&gt;&lt;/a&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/div&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/div&gt;&#x0A;</xsl:text>
                
            <!-- código js para tooltip de mapa -->        
            <xsl:text>&lt;script type="text/javascript"&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/script&gt;&#x0A;</xsl:text>
            <xsl:text>$(function() {        </xsl:text>
            <xsl:for-each select="tei:p/tei:placeName">            
                <xsl:text>$("#</xsl:text><xsl:value-of select="position()"/><xsl:text>").miniPreview();</xsl:text>
            </xsl:for-each>
            <xsl:text>});&#x0A;</xsl:text>
            <xsl:text>&lt;script src="{{ site.baseurl }}/assets/js/</xsl:text><xsl:value-of select="$places_json"/><xsl:text>" type="text/javascript"&gt;&lt;/script&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;script src="{{ site.baseurl }}/assets/js/map-balloon.js"&gt;&lt;/script&gt;&#x0A;</xsl:text>  
            
        <!--/xsl:result-document-->
        
    </xsl:template>
    
    <xsl:template match="tei:p">
        <xsl:text>&lt;p&gt;</xsl:text>
        <xsl:apply-templates select="tei:persName | tei:placeName | text()"/>
        <xsl:text>&lt;/p&gt;&#x0A;</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:text>&lt;h2 class="mb-3"&gt;</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>&lt;/h2&gt;&#x0A;</xsl:text>
    </xsl:template>
    
    <!-- tooltip de texto-->
    <xsl:template match="tei:persName | tei:placeName">
        <xsl:value-of select="text()"/>
        <xsl:text>&lt;button data-balloon-pos="up" data-balloon-length="large" data-balloon='</xsl:text>
        <xsl:value-of select="following::text()[1]"/>
        <xsl:text>'&lt;/button&gt;</xsl:text>
    </xsl:template>

    <!-- tooltip de mapa -->
    <xsl:template match="tei:placeName">
         <xsl:text>&lt;a id="</xsl:text><xsl:value-of select="position()"/><xsl:text>" class="map-balloon" href="javascript:;"&gt;</xsl:text>
        <xsl:value-of select="text()"/>
        <xsl:text>&lt;/a&gt;</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>



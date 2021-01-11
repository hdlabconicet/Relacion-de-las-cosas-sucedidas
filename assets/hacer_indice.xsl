<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all"
    version="3.0">
    
    <!-- variables globales -->
    <xsl:variable name="path_indice" select="'01-indice.html'"/>
    <xsl:variable name="pages_dir" select="'pero_pages'"/>
    
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <!-- guarda resultado en archivos -->
        <xsl:result-document method="text" encoding="utf-8"
            href="../{$path_indice}" omit-xml-declaration="yes">
            <xsl:text>---&#x0A;</xsl:text>
            <xsl:text>layout: page&#x0A;</xsl:text>
            <xsl:text>title: Edición digital&#x0A;</xsl:text>
            <xsl:text>permalink: /indice-nuevo/&#x0A;</xsl:text>
            <xsl:text>type: texto&#x0A;</xsl:text>
            <xsl:text>---&#x0A;&#x0A;</xsl:text>
            
            <xsl:text>&lt;h2&gt;Índice&lt;/h2&gt;&#x0A;</xsl:text>
            
            <!--xsl:text>&lt;div class="alert alert-dark" role="alert"&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;h4 class="alert-heading"&gt;Anotaciones&lt;/h4&gt;&#x0A;</xsl:text>
            <xsl:text>Para hacer anotaciones en esta edición, use el &lt;strong&gt;botón "Anotar"&lt;/strong&gt; de la barra de navegación. Luego de hacer click, seleccione el texto de su interés y podrá hacer resaltados y asociar notas.&#x0A;</xsl:text>
            <xsl:text>&lt;button type="button" class="close" data-dismiss="alert" aria-label="Close"&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;span aria-hidden="true"&gt;&#0215;&lt;/span&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/button&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/div&gt;&#x0A;&#x0A;</xsl:text>
            
            <xsl:text>&lt;div class="container mx-auto px-2"&gt;&#x0A;&#x0A;</xsl:text-->
            
            <xsl:apply-templates select="//tei:body/tei:div"/>
        </xsl:result-document>
    </xsl:template>
    
    
    <xsl:template match="tei:div">
        
        <xsl:text>&lt;div class="py-1 mb-0 prose"&gt;&#x0A;</xsl:text>
        <xsl:text>&lt;a class="no-underline" data-toggle="collapse" href="#collapse</xsl:text><xsl:value-of select="position()"/>
        <xsl:text>" role="button" aria-expanded="false" aria-controls="collapseExample"&gt;&lt;h3&gt;</xsl:text>
        <xsl:value-of select="tei:head"></xsl:value-of><xsl:text> &lt;span class="caret"/&gt;&lt;/h3&gt;&lt;/a&gt;&#x0A;</xsl:text>
            
        <xsl:text>&lt;div class="collapse" id="collapse</xsl:text><xsl:value-of select="position()"/><xsl:text>"&gt;&#x0A;</xsl:text>
        <xsl:for-each select="tei:pb"> 
            <xsl:text>&lt;a class="no-underline" href="{{ site.baseurl }}/</xsl:text><xsl:value-of select="$pages_dir"/><xsl:text>/</xsl:text><xsl:value-of select="replace(@facs, '\.png', '')"/><xsl:text>"&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;h6&gt;Página </xsl:text><xsl:value-of select="replace(replace(@facs, '\.png', ''), 'pg_0+','')"/><xsl:text>&lt;/h6&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;span class="link-index"&gt;</xsl:text><xsl:value-of select="substring( string-join(following::tei:p[1]/text()|following::tei:persName[1]/text()|following::tei:placeName[1]/text() ), 1, 80)"/>
            <xsl:text>... &lt;svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16"&gt;
  &lt;path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/&gt;
&lt;/svg&gt;&lt;/span&gt;&#x0A;</xsl:text>
            <xsl:text>&lt;/a&gt;&#x0A;</xsl:text>
        </xsl:for-each>
        <xsl:text>&lt;/div&gt;&#x0A;&#x0A;</xsl:text>
        
   
        <xsl:text>&lt;/div&gt;&#x0A;&#x0A;</xsl:text>
        
    </xsl:template>

    
</xsl:stylesheet>
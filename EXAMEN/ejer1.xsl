<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
<xsl:template match="/">
    <html>
        <head><title>Lista con las distintas películas y sus protagonistas</title></head>
        <body>
            <h1>Lista con las distintas películas y sus protagonistas</h1>
            <ul>
                <xsl:apply-templates select="//pelicula"/>
            </ul>
        </body>
    </html>
</xsl:template>
<xsl:template match="pelicula">
    <li><xsl:value-of select="titulo"/>
        <ul>
            <xsl:for-each select="reparto/actor">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </li>
</xsl:template>
</xsl:stylesheet>
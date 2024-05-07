<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
<xsl:variable name="codigocine" select="//cine[nombre='SW Cine']/@codigo"/>
<xsl:template match="/">
    <html>
        <head><title>Listado de sesiones de SW Cine</title></head>
        <body>
            <h1>Listado de sesiones de SW Cine (<xsl:value-of select="$codigocine"/>)</h1>
            <ul>
                <xsl:apply-templates select="//pelicula[proyecciones/proy_cine/@codigo=$codigocine]"/>
            </ul>
        </body>
    </html>
</xsl:template>
<xsl:template match="pelicula">
    <li><xsl:value-of select="titulo"/>
        <ul>
            <xsl:for-each select="proyecciones/proy_cine[@codigo=$codigocine]/sesion">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </li>
</xsl:template>
</xsl:stylesheet>
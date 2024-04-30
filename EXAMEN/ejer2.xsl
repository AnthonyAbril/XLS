<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:variable name="codigocine" select="//cine[nombre='SW Cine']/@codigo"/>
<xsl:template match="/">
    <html>
        <head><title>Listado de sesiones de SW Cine</title></head>
        <body>
            <h1>Listado de sesiones de SW Cine (<xsl:value-of select="$codigocine"/>)</h1>
            <xsl:apply-templates select="//pelicula[proyecciones/proy_cine/@codigo=$codigocine]"/>
        </body>
    </html>
</xsl:template>
<xsl:template match="pelicula">
    <ul>
        <li><xsl:value-of select="titulo"/></li>
        <xsl:for-each select="proyecciones/proy_cine[@codigo=$codigocine]/sesion">
            <ul>
                <li><xsl:value-of select="."/></li>
            </ul>
        </xsl:for-each>
    </ul>
</xsl:template>
</xsl:stylesheet>
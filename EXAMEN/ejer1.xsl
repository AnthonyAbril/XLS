<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
    <html>
        <head><title>Lista con las distintas películas y sus protagonistas</title></head>
        <body>
            <h1>Lista con las distintas películas y sus protagonistas</h1>
            <xsl:apply-templates select="//pelicula"/>
        </body>
    </html>
</xsl:template>
<xsl:template match="pelicula">
    <ul>
        <li><xsl:value-of select="titulo"/></li>
        <xsl:for-each select="reparto/actor">
            <ul>
                <li><xsl:value-of select="."/></li>
            </ul>
        </xsl:for-each>
    </ul>
</xsl:template>
</xsl:stylesheet>
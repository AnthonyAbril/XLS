<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <body>
                <h1>Listado de sesiones de Cinema Friki (N101)</h1>
                <xsl:apply-templates select="//proy_cine[@codigo='N101']"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="proy_cine">
        <ul>
            <li><xsl:value-of select="../../titulo"/></li>
            <ul>
                <xsl:for-each select="sesion">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
        </ul>
    </xsl:template>
</xsl:stylesheet>
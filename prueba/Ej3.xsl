<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"  encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejemplo XSLT</title>
            </head>
            <body>
                <xsl:template match="ciudad">
                    <xsl:choose>
                        <xsl:when test="nombre='Madrid'">
                            <p>Primer</p>
                        </xsl:when>
                        <xsl:when test="nombre='Madrid'">
                            <p>Segundo</p>
                        </xsl:when>
                        <xsl:otherwise>
                            <p>Tercer</p>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:template>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
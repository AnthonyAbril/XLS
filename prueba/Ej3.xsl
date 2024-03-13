<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejemplo XSLT</title>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciudad">
        <xsl:choose>
            <xsl:when test="@a>1">
                <p>Primer</p>
            </xsl:when>
            <xsl:when test="@a=2">
                <p>Segundo</p>
            </xsl:when>
            <xsl:otherwise>
                <p>Tercer</p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
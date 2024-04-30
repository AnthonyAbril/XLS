<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>películas y sus protagonistas</title>
            </head>
            <body>
                <h1>películas y sus protagonistas</h1>
                <xsl:apply-templates select="//pelicula" />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pelicula">
        <ul>
            <li>
                <xsl:value-of select="titulo" />
                <ul>
                    <xsl:for-each select="reparto/actor">
                        <li>
                            <xsl:value-of select="." />
                        </li>
                    </xsl:for-each>
                </ul>
            </li>
        </ul>
    </xsl:template>
</xsl:stylesheet>
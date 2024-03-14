<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="//producto"/>
                </ul>
            </body>    
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <xsl:if test="peso&gt;6 and peso/@unidad='kg' or peso&gt;6999 and peso/@unidad='g'">
            <li>Elemento <xsl:value-of select="@codigo"/>
                <ul>
                    <li>Nombre: <xsl:value-of select="nombre"/></li>
                    <li>Peso:<xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></li>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
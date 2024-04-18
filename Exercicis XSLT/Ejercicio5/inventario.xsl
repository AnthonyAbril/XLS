<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
            </head>
            <body>
                <table border="1">
                    <tbody>
                        <xsl:apply-templates select="//producto"/>
                    </tbody>
                </table>
            </body>    
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/>
            </td>
            <td>
                <xsl:value-of select="lugar/aula"/><xsl:value-of select="lugar/@edificio"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
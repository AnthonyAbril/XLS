<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <link rel="stylesheet" href="inventario.css"/>
            </head>
            <body>
                <table border="1">
                    <tbody>
                        <tr>
                            <th colspan="100">Inventario</th>
                        </tr>
                        <xsl:apply-templates select="//producto"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <xsl:if test="lugar/@edificio='A'">    
            <xsl:if test="peso&lt;7 and peso/@unidad='kg' or peso&lt;7000 and peso/@unidad='g'">    
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td>
                        <xsl:value-of select="peso" /><xsl:value-of select="peso/@unidad" />
                    </td>
                    <td>
                        <xsl:value-of select="lugar/aula" />
                        <xsl:value-of select="lugar/@edificio" />
                    </td>
                </tr>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
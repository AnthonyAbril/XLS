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
                        <xsl:for-each select="//producto[lugar/aula='6']">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
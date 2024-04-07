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
                            <th colspan="100">Productos del edificio A</th>
                        </tr>
                        <xsl:for-each select="//producto">
                            <xsl:if test="lugar/@edificio='A'">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="peso" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="lugar/aula" />
                                        <xsl:value-of select="lugar/@edificio" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                </table>
                <table border="1">
                    <tbody>
                        <tr>
                            <th colspan="100">Productos del edificio B</th>
                        </tr>
                        <xsl:for-each select="//producto">
                            <xsl:if test="lugar/@edificio='B'">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="peso" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="lugar/aula" />
                                        <xsl:value-of select="lugar/@edificio" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
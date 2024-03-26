<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <!--usar un css con una media query-->
                <link rel="stylesheet" src="style.css" media="screen and (max-width: 600px)"/>
                <link rel="stylesheet" src="inventario.css"/>
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
                <xsl:value-of select="peso"/>
            </td>
            <td>
                <xsl:value-of select="lugar/@edificio"/>
                <xsl:value-of select="lugar/aula"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
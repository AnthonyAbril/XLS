<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <link rel="stylesheet" href="inventario.css"/>
            </head>
            <body>
                <h1>Inventario</h1>
                <table border="1">
                    <tr><th colspan="100">Productos del edificio A</th></tr>
                    <xsl:apply-templates select="//producto[lugar/@edificio='A']"/>
                </table>
                <table border="1">
                    <tr><th colspan="100">Productos del edificio B</th></tr>
                    <xsl:apply-templates select="//producto[lugar/@edificio='B']"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="producto">
        <tr>
            <td> <xsl:value-of select="nombre" /> </td>
            <td> <xsl:value-of select="peso" /> </td>
            <td> <xsl:value-of select="lugar/aula" /><xsl:value-of select="lugar/@edificio" /> </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:variable name="fila">
        <td><xsl:value-of select="nombre"/></td>
        <td>
            <xsl:value-of select="peso" /><xsl:value-of select="peso/@unidad" />
        </td>
        <td>
            <xsl:value-of select="lugar/aula" />
            <xsl:value-of select="lugar/@edificio" />
        </td>
    </xsl:variable>

    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <link rel="stylesheet" href="inventario.css"/>
            </head>
            <body>
                <xsl:comment>Tabla con productos del edificio A, si peso mayor, igual, o menor a 7</xsl:comment>
                <table>
                    <tr>
                        <th colspan="100">Inventario</th>
                    </tr>
                    <xsl:apply-templates select="//producto[lugar/@edificio='A']"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto[(peso=7 and peso/@unidad='kg') or (peso=7000 and peso/@unidad='g')]">
        <tr id="rojo"> <xsl:copy-of select="$fila"/> </tr>
    </xsl:template>

    <xsl:template match="producto[(peso&gt;7 and peso/@unidad='kg') or (peso&gt;7000 and peso/@unidad='g')]">
        <tr id="azul"> <xsl:copy-of select="$fila"/> </tr>
    </xsl:template>

    <xsl:template match="producto[(peso&lt;7 and peso/@unidad='kg') or (peso&lt;7000 and peso/@unidad='g')]">
        <tr id="verde"> <xsl:copy-of select="$fila"/> </tr>
    </xsl:template>
</xsl:stylesheet>
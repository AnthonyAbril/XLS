<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <link rel="stylesheet" href="inventario.css"/>
            </head>
            <body>
                <xsl:comment>Cuantos productos tienen la misma unidad de peso que el producto p2</xsl:comment>
                <xsl:value-of select="count(//producto[peso/@unidad=//producto[@codigo='P2']/peso/@unidad])" />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
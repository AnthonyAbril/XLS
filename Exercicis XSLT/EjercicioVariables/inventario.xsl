<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:variable name="unidadpeso" select="/inventario/producto[@codigo='P2']/peso/@unidad"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario de los elementos de unidad <xsl:value-of select="$unidadpeso"/></title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="//producto[peso/@unidad=$unidadpeso]"/>
                </ul>
            </body>    
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <li>Elemento <xsl:value-of select="@codigo"/>
            <ul>
                <li>Nombre: <xsl:value-of select="nombre"/></li>
                <li>Peso:<xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></li>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>
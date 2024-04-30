<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="UTF-8"/>
<xsl:template match="/">
    <peliculas>
        <xsl:copy-of select="//pelicula[((contains(titulo,'s')) or (contains(titulo,'S'))) and (anyo &gt; 1940)]"/>
    </peliculas>
</xsl:template>
</xsl:stylesheet>
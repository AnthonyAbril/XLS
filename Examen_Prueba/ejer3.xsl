<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="UTF-8"/>
<xsl:template match="/">
    <cartelera>
        <xsl:copy-of select="/cartelera/peliculas/pelicula[(anyo &gt; 1940) and ( (contains(titulo,'s')) or (contains(titulo,'S')) ) ]"/>
    </cartelera>
</xsl:template>
</xsl:stylesheet>
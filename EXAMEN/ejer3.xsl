<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" />
<xsl:template match="/">
    <peliculas>
        <xsl:copy-of select="//pelicula[((contains(titulo,'s')) or (contains(titulo,'S'))) and (anyo &gt; 1940)]"/>
    </peliculas>
</xsl:template>
</xsl:stylesheet>
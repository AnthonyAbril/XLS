<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" />
<xsl:template match="/">
    <cine codigo="T303">
        <xsl:copy-of select="cartelera/cines/cine[@codigo='T303']/nombre"/>
        <sesiones>
            <xsl:copy-of select="//proy_cine[@codigo='T303']/sesion"/>
        </sesiones>
    </cine>
</xsl:template>
</xsl:stylesheet>
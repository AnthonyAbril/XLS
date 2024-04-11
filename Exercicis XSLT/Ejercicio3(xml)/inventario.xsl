<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <inventario>
            <xsl:copy-of select="//producto[peso&gt;6 and peso/@unidad='kg' or peso&gt;6999 and peso/@unidad='g']" />
        </inventario>
    </xsl:template>
</xsl:stylesheet>
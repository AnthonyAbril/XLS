<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <inventario>
            <xsl:for-each select="//producto[lugar/aula='6']">
                <producto>
                    <xsl:copy-of select="nombre"/>
                </producto>
            </xsl:for-each>
        </inventario>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ciudades</title>
            </head>
            <body>
                <h1>Ciudades</h1>
                <table border="1">
                    <tbody>
                        <tr>
                            <th colspan="100%">ciudad</th>
                        </tr>
                        <tr>
                            <th>nombre</th>
                            <xsl:for-each select="ciudades/ciudad">
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                            </xsl:for-each>
                        </tr>
                        <tr>
                            <th>habitantes</th>
                            <xsl:for-each select="ciudades/ciudad">
                                <td>
                                    <xsl:value-of select="habitantes"/>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
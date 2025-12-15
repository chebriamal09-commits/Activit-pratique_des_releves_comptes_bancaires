<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérations Crédit</title>
            </head>
            <body>
                
                <h1>Opérations de type CREDIT</h1>
                
                <table border="1" cellpadding="5">
                    <tr>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                    
                </table>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevé Bancaire</title>
            </head>
            <body>
                
                <h1>Relevé Bancaire</h1>
                
                <p><strong>RIB :</strong> <xsl:value-of select="releve/@RIB"/></p>
                <p><strong>Date du relevé :</strong> <xsl:value-of select="releve/dateReleve"/></p>
                <p><strong>Solde :</strong> <xsl:value-of select="releve/solde"/></p>
                
                <h2>Liste des opérations</h2>
                
                <table border="1" cellpadding="5">
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>Résumés</h2>
                
                <p><strong>Total des crédits : </strong>
                    <xsl:value-of
                        select="sum(releve/operations/operation[@type='CREDIT']/@montant)" />
                </p>
                
                <p><strong>Total des débits : </strong>
                    <xsl:value-of
                        select="sum(releve/operations/operation[@type='DEBIT']/@montant)" />
                </p>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>


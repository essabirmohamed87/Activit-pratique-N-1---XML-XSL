<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        version="3.0">
    <xsl:template match="/">
        <html>
            <head>
               <title>Meteo</title> 
           </head>   
            <body>
                <xsl:for-each select="meteo/mesure[@date='2025-11-16']">
            <ul>  
                <li> Date Mesure : <xsl:value-of select="@date"/></li>  
            </ul> 
                    <table border="1" width="80%">
                        <tr>
                            <th>Ville</th>
                            <th>Température</th>
                        </tr>  
                        <xsl:for-each select="ville">
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                                <td><xsl:value-of select="@temperature"/></td>
                            </tr>  
                        </xsl:for-each>
                    </table>    
                </xsl:for-each>
            </body>  
        </html>
    </xsl:template>
</xsl:stylesheet>
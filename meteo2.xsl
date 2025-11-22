<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
       version="3.0">
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
            <line x1="100" y1="150" x2="100" y2="500" stroke="blue" stroke-width="2"></line>
            <line x1="100" y1="500" x2="1000" y2="500" stroke="blue" stroke-width="2"></line>
            <text strok="blue" x="80" y="140">Température</text> 
            <text strok="blue" x="1020" y="500">Ville</text>
                <xsl:for-each select="meteo/mesure[@date='2025-11-16']/ville">
            <xsl:variable name="pos" select="position()*120"/>
            <xsl:variable name="temp" select="@temperature*10"/>
            <text strok="blue" x="{$pos}" y="520">
            <xsl:value-of select="@nom"/>
            </text>
            <rect width="20" height="{$temp}" x="{$pos}" y="{500-$temp}" stroke="blue" fil="red">
                <animate attributeName="height" dur="3s" from="0" to="{$temp}"></animate>
                <animate attributeName="y" dur="3s" from="500" to="{500-$temp}"></animate>
            </rect>
                    <text strok="blue" x="{$pos}" y="{500-$temp - 10}">
                        <xsl:value-of select="@temperature"/>
                    </text>      
                </xsl:for-each>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>
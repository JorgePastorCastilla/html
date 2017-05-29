<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : exercici1.xsl
    Created on : 29 / de maig / 2017, 10:07
    Author     : ifc33a
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>exercici1.xsl</title>
                 <style>
                    .cabeza{font-size: 16px;}
                    .columna{width:25%;}
                    table{width:60%;border-collapse: collapse}
                    .partidos{width:100px;display:inline-block;}
                    table tr td{border: solid 2px;}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <td class="cabeza columna">
                            <h3>PARTIT</h3>
                        </td>
                        <td class="cabeza columna">
                            <h3>ESCANYS</h3>
                        </td>
                        <td class="cabeza columna">
                            <h3>VOTS</h3>
                        </td>
                        <td class="cabeza columna">
                            <h3>PERCENTATGE</h3>
                        </td>
                    </tr>
                    <xsl:for-each select="/escrutinio_sitio/resultados/partido">
                        <tr>
                            <td class="columna">
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </td>
                            <td class="columna">
                                <xsl:value-of select="electos"></xsl:value-of>
                            </td>
                            <td class="columna">
                                <xsl:value-of select="votos_numero"></xsl:value-of>
                            </td>
                            <td class="columna">
                                <xsl:value-of select="votos_porciento"></xsl:value-of>
                                <xsl:text>%</xsl:text>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>   
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

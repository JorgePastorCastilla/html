<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : exercici2.xsl
    Created on : 29 / de maig / 2017, 10:27
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
                <title>exercici3.xsl</title>
                <style>
                    .cabeza{font-size: 16px;}
                    .columna{width:25%;}
                    table{border-collapse: collapse}
                    .partidos{width:100px;display:inline-block;}
                    table tr td{border: solid 2px;}
                                    
                    @media only screen and (min-width: 851px) {
                    .col-0 {width: 0%}
                    .col-1 {width: 8.33%;}
                    .col-2 {width: 16.66%;}
                    .col-3 {width: 25%;}
                    .col-4 {width: 33.33%;}
                    .col-5 {width: 41.66%;}
                    .col-6 {width: 50%;}
                    .col-7 {width: 58.33%;}
                    .col-8 {width: 66.66%;}
                    .col-9 {width: 75%;}
                    .col-10 {width: 83.33%;}
                    .col-11 {width: 91.66%;}
                    .col-12 {width: 100%;}
                    }
                    @media only screen and (max-width: 650px) {
                    .col-0m {width: 0%}
                    .col-1m {width: 8.33%;}
                    .col-2m {width: 16.66%;}
                    .col-3m {width: 25%;}
                    .col-4m {width: 33.33%;}
                    .col-5m {width: 41.66%;}
                    .col-6m {width: 50%;}
                    .col-7m {width: 58.33%;}
                    .col-8m {width: 66.66%;}
                    .col-9m {width: 75%;}
                    .col-10m {width: 83.33%;}
                    .col-11m {width: 91.66%;}
                    .col-12m {width: 100%;}
                    }
                </style>

            </head>
            <body>
                <h1>Resultats Eleccions Generals 2015</h1>
                <table class="col-5 col-12m">
                    <tr>
                        <td class="cabeza columna">
                            <h3>PARTIT</h3>
                        </td>
                        <td class="cabeza columna">
                            <h3>ESCANYS</h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="columna">PP</td>
                        <td class="columna">
                            <xsl:value-of select="sum(/escrutinio/escrutinio_sitio/resultados/partido[nombre='PP']/electos)"></xsl:value-of>
                        </td>
                    </tr>
                    <tr>
                        <td style=" width: 30%">PSOE</td>
                        <td style=" width: 30%">
                            <xsl:value-of select="sum(/escrutinio/escrutinio_sitio/resultados/partido[nombre='PSOE' or nombre='PSC']/electos)"></xsl:value-of>
                        </td>
                    </tr>
                    <tr>
                        <td class="columna">PODEMOS</td>
                        <td class="columna">
                            <xsl:value-of select="sum(/escrutinio/escrutinio_sitio/resultados/partido[nombre='PODEMOS' or nombre='EN COMÚ']/electos)"></xsl:value-of>
                        </td>
                    </tr>
                    <tr>
                        <td class="columna">CDs</td>
                        <td class="columna">
                            <xsl:value-of select="sum(/escrutinio/escrutinio_sitio/resultados/partido[nombre='CDs']/electos)"></xsl:value-of>
                        </td>
                    </tr>
                </table>
                <xsl:for-each select="/escrutinio/escrutinio_sitio">
                    <h1>
                        <xsl:value-of select="nombre_sitio"></xsl:value-of>
                    </h1>
                    <table class="col-5 col-12m">
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
                        <xsl:for-each select="resultados/partido[electos>0]">
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
                    <div class="col-7 col-12m" style="color:white;background-color: lightblue">
                        <xsl:for-each select="resultados/partido[electos>0]">
                            <xsl:element name="div">
                                <xsl:attribute name="class">
                                    partidos
                                </xsl:attribute>
                                <xsl:attribute name="style">
                                    height:<xsl:value-of select="votos_porciento"/>%;vertical-align:top;text-align:center;
                                    <xsl:choose>
                                        <xsl:when test="nombre='PP'">
                                            <xsl:text>background-color: blue;</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="nombre='PODEMOS' or nombre='EN COMÚ'">
                                            <xsl:text>background-color: violet;</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="nombre='PSOE' or nombre='PSC'">
                                            <xsl:text>background-color: RED;</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="nombre='CDs'">
                                            <xsl:text>background-color: orange;</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>background-color: gray;</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="nombre"/>
                            </xsl:element>
                        </xsl:for-each>
                    </div>  
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
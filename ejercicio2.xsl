<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xls="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="1.0" method="html"  encoding="UTF-8" indent="yes"/>
    <xsl:template match="/pedidos">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css"/>
            </head>
            <body>
                <div class="table-container">
                    <h1 class="title">Pedidos</h1>
                    <table class="table is-fullwidth is-striped is-bordered">
                        <thead>
                            <tr>
                                <th>Número Serie</th>
                                <th>Cantidad</th>
                                <th>Peso</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="pedido">
                                <tr>
                                    <td><xls:value-of select="numeroSerie"/></td>
                                    <td><xls:value-of select="cantidad"/></td>
                                    <td><xls:value-of select="peso"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="/">
        <html>
            <head>
                <title>Text of the Tabula Capitolina</title>
            </head>
            <body>
                <div>
                    <xsl:apply-templates/>
                </div>
            </body>
        </html>
    </xsl:template>
    <!--Suppress from output-->
    <xsl:template match="fileDesc"/>
    <xsl:template match="fileDesc/titleStmt"/>
    <xsl:template match="fileDesc/titleStmt/title"/>
    <xsl:template match="fileDesc/titleStmt/editor"/>
    <xsl:template match="fileDesc/publicationStmt"/>
    <xsl:template match="fileDesc/sourceDesc"/>
    <!-- provide a color and raise to h2 all div[@n] using mode -->
    <xsl:template match="*/div[@n]">
        <br/>
        <h2 style="color: #B22222;">
            <xsl:value-of select="@n"/>
        </h2>
        <xsl:apply-templates select="*" mode="content"/>
    </xsl:template>
    <!-- provide color and raise to h3 the div/div[@n] found in the Illiad mark-upusing mode -->
    <xsl:template match="*/div/div[@n]" mode="content">
        <br/>
        <h3 style="color: #A9A9A9">
            <xsl:value-of select="@n"/>
        </h3>
        <xsl:apply-templates mode="content"/>
    </xsl:template>
    <!-- create Line numbers for proofing markup from the @n attribute value, and convert ab to p using mode-->
    <xsl:template match="ab" mode="content" name="ab">
        <p>[Line <xsl:value-of select="@n"/>]&#160;&#160;&#160;&#160;&#160;
            <xsl:apply-templates/></p>
    </xsl:template>
    <!-- provide a color for unclear elements -->
    <xsl:template match="unclear">
        <span style="color: #ff8000;">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <!-- provide a color for supplied elements -->
    <xsl:template match="supplied">
        <span style="color: #2E9AFE;">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <!-- bolds Iliadic book letters when they appear -->
    <xsl:template match="rs[@type = 'book']">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
</xsl:stylesheet>

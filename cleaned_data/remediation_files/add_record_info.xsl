<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.loc.gov/mods/v3" version="2.0">
    
    <xsl:output encoding="UTF-8" method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <!-- identity transform -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- add data provider and other recordInfo things -->
    <xsl:template match="mods">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <recordInfo>
                <recordContentSource>University of Tennessee, Knoxville. Libraries</recordContentSource>
                <languageOfCataloging>
                    <languageTerm authority="iso639-2b" type="code">eng</languageTerm>
                </languageOfCataloging>
                <recordOrigin>Created and edited in general conformance to MODS Guidelines (Version 3.5).</recordOrigin>
            </recordInfo>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>

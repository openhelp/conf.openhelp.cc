<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:str="http://exslt.org/strings"
                xmlns:mal="http://projectmallard.org/1.0/"
                xmlns:html="http://www.w3.org/1999/xhtml"
                xmlns="http://www.w3.org/1999/xhtml"
                extension-element-prefixes="exsl"
                exclude-result-prefixes="mal str"
                version="1.0">

<xsl:param name="theme.icons.size.note" select="24"/>

<xsl:param name="color.yellow_border" select="'#fcaf3e'"/>
<xsl:param name="color.text_light" select="'#30352e;'"/>
<xsl:param name="color.blue_border" select="'#3465a4'"/>

<xsl:template name="html.head.custom">
  <link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Handlee" rel="stylesheet" type="text/css"/>
  <meta property="og:image" content="http://conf.openhelp.cc/oh.png"/>
  <xsl:copy-of select="/mal:page/mal:info/html:script"/>
  <xsl:copy-of select="/mal:page/mal:info/html:link"/>
</xsl:template>

<xsl:template name="html.js.content.custom">
<xsl:text><![CDATA[
(function(){
window.addEventListener('scroll', function(e) {
  if (window.scrollY > 250) {
    document.querySelector('div.topnav').classList.add('topnavfixed');
  } else {
    document.querySelector('div.topnav').classList.remove('topnavfixed');
  }
});
})();
]]></xsl:text>
<!--
<xsl:text>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-57788613-1', 'auto');
  ga('send', 'pageview');
</xsl:text>
-->
</xsl:template>

<xsl:template mode="mal2html.title.mode" match="mal:title[@style = 'hidden']"/>

<xsl:template name="html.top.custom">
  <xsl:param name="node" select="."/>
  <xsl:variable name="rootlink">
    <xsl:if test="$mal.link.extension != ''">
      <xsl:text>index</xsl:text>
      <xsl:value-of select="$mal.link.extension"/>
    </xsl:if>
  </xsl:variable>
  <div class="banner"></div>
  <div class="logo">
    <div class="logohead">
    <img class="logo" src="{$mal.site.root}oh.svg" width="240" height="240" alt=""/>
    <div class="heading">
      <h1>Open Help</h1>
      <h2>Conference &amp; Sprints</h2>
      <h3>2017</h3>
    </div>
    </div>
  </div>
  <div class="topnav">
    <ul>
      <li><a href="{$mal.site.root}{$rootlink}">Home</a></li>
      <li><a href="{$mal.site.root}2017/schedule{$mal.link.extension}">Schedule</a></li>
      <li><a href="{$mal.site.root}2017/sessions{$mal.link.extension}">Sessions</a></li>
      <li><a href="{$mal.site.root}2017/speakers{$mal.link.extension}">Speakers</a></li>
      <li><a href="{$mal.site.root}location{$mal.link.extension}">Location</a></li>
      <li><a href="{$mal.site.root}register{$mal.link.extension}">Register <span class="earlybird"><b>←</b> Early bird price until June 3!</span></a></li>
    </ul>
  </div>
</xsl:template>

<xsl:template mode="mal2html.block.mode" match="html:div">
  <xsl:apply-templates mode="oh.html.mode" select="."/>
</xsl:template>

<xsl:template mode="oh.html.mode" match="html:*">
  <xsl:element name="{local-name(.)}" namespace="{$html.namespace}">
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="oh.html.mode" select="node()"/>
  </xsl:element>
</xsl:template>

<xsl:template mode="oh.html.mode" match="text()">
  <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="mal:links[@type = 'guide'][@style = 'hidden']"/>

<xsl:template mode="mal2html.block.mode" match="html:*">
  <xsl:copy-of select="."/>
</xsl:template>

</xsl:stylesheet>

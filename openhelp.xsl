<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:str="http://exslt.org/strings"
                xmlns:mal="http://projectmallard.org/1.0/"
                xmlns="http://www.w3.org/1999/xhtml"
                extension-element-prefixes="exsl"
                exclude-result-prefixes="mal str"
                version="1.0">

<xsl:param name="theme.icons.size.note" select="24"/>

<xsl:param name="color.yellow_border" select="'#fcaf3e'"/>
<xsl:param name="color.text_light" select="'#30352e;'"/>
<xsl:param name="color.blue_border" select="'#3465a4'"/>

<xsl:template name="html.head.custom">
  <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Bitter:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet" type="text/css"/>
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</xsl:template>

<xsl:template name="html.css.custom">
<xsl:text>
div.banner {
  background: #2c2b27 url('merc.jpg');
  background-size: cover;
  position: fixed;
  height: 300px;
  width: 100%;
  margin: 0; padding: 0;
  z-index: -100;
}
div.logo {
  margin: 0;
  height: 300px;
  position: relative;
}
div.logo img.logo {
  display: inline-block;
  margin: 0;
}
div.logo img.logosm {
  display: none;
}
div.logo div.heading {
  display: inline-block;
  text-align: center;
  vertical-align: top;
  margin: 40px 0 0 0;
  font-family: 'Bitter';
  font-weight: bold;
  text-shadow: 2px 2px 0 #574030;
}
div.logo h1 {
  margin: 0;
  color: white;
  font-size: 48pt;
}
div.logo h2 {
  margin: 0;
  color: #eeeeec;
  font-size: 24pt;
}
div.logo h3 {
  margin: 0;
  color: #eeeeec;
  font-family: Handlee;
  font-size: 24pt;
  font-weight: bold;
}
@media only screen and (max-width: 600px) {
  div.logo { height: 200px; }
  div.logo img.logo { display: none; }
  div.logo img.logosm {
    display: block;
    float: left;
    margin: 0;
  }
  div.logo div.heading {
    margin: 10px 0 0 0;
    text-shadow: 1px 1px 0 #574030;
  }
  div.logo h1 {
    font-size: 24pt;
  }
  div.logo h2 {
    font-size: 12pt;
  }
  div.logo h3 {
    font-size: 12pt;
  }
}

div.topnav {
  background: rgba(87, 64, 48, 0.7);
  margin: 0;
  position: absolute;
  bottom: 0px;
  width: 100%;
}
div.topnav ul {
  display: block;
  max-width: 760px;
  margin: 0 auto;
  padding: 0;
}
div.topnav li {
  display: inline-block;
  margin: 0; padding: 0;
}
div.topnav li a {
  font-family: Bitter;
  display: inline-block;
  margin: 0;
  padding: 10px 20px;
  color: #555753;
  color: white;
  text-shadow: 1px 1px 0 #574030;
}
div.topnav li a:hover {
  border: none;
  color: #204a87;
  background-color: #eeeeec;
  text-shadow: none;
}

body {
  font-family: 'Lato', sans;
  font-size: 14px;
}
div.page {
  border: none;
  margin: 0;
  width: 100%;
  max-width: 100%;
  background: white;
}
div.header {
  padding-top: 20px;
  border: solid 1px white;
  max-width: 760px;
  margin: 0 auto;
}
div.trails {
  background: white;
  color: #3465a4;
  padding: 0;
  font-family: Bitter;
}
@media only screen and (max-width: 400px) {
  div.trails {
    padding: 0.5em 6px 0.5em 6px;
  }
}
div.footer {
  max-width: 760px;
  margin: 0 auto;
}
div.body {
  margin: 0;
  padding: 0 0 40px 0;
  max-width: 760px;
  margin: 0 auto;
}
div.sect div.sect { margin-left: 0; }
div.sect div.hgroup {
  border-bottom: none;
}
h1, h2, h3, h4, h5, h6, h7 { font-family: Bitter; }
h1.title { font-size: 3em; }
h2.title { font-size: 1.73em; }
p { max-width: 62em; text-align: justify; }
a, a:visited { color: #303757; }
a:hover { border-bottom: solid 1px #303757; }
#sponsors a, a img { border: none; }
@media only screen and (max-width: 400px) {
  h1.title { font-size: 2em; }
  h2.title { font-size: 1.44em; }
  p { text-align: left; }
}
table, td { border-color: #ccc; }

div.media.floatend img {
  border-radius: 6px;
  box-shadow: 2px 2px 2px #666;
  margin-top: -2.4em;
}
</xsl:text>
</xsl:template>

<xsl:template name="html.js.content.custom">
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

<xsl:template mode="mal2html.title.mode" match="mal:title[@style = 'pmo-hidden']"/>

<xsl:template mode="html.class.attr.mode" match="mal:section">
  <xsl:if test="@style='pmo-what' or @style ='pmo-why' or @style='pmo-specs'">
    <xsl:text>pmo-index </xsl:text>
    <xsl:value-of select="@style"/>
  </xsl:if>
</xsl:template>

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
    <img class="logo" src="{$mal.site.root}ohshadow.png" width="240" height="240" alt=""/>
    <img class="logosm" src="{$mal.site.root}ohshadowsm.png" width="120" height="120" alt=""/>
    <div class="heading">
      <h1>Open Help</h1>
      <h2>Conference &amp; Sprints</h2>
      <h3>2015</h3>
    </div>
    <div class="topnav">
      <ul>
        <li><a href="{$mal.site.root}{$rootlink}">Home</a></li>
        <li><a href="{$mal.site.root}2014/schedule{$mal.link.extension}">Schedule</a></li>
        <li><a href="{$mal.site.root}2014/sessions{$mal.link.extension}">Sessions</a></li>
        <li><a href="{$mal.site.root}2014/speakers{$mal.link.extension}">Speakers</a></li>
        <li><a href="{$mal.site.root}location{$mal.link.extension}">Location</a></li>
        <li><a href="{$mal.site.root}register{$mal.link.extension}">Register</a></li>
      </ul>
    </div>
  </div>
</xsl:template>

<xsl:template match="mal:links[@type = 'guide'][@style = 'hidden']"/>

<!--
<xsl:template mode="html.header.mode" match="mal:page">
  <xsl:choose>
    <xsl:when test="string(@style) = 'pmo-source'">
      <xsl:for-each select="$mal.cache">
        <xsl:variable name="srclink" select="mal:p[1]/mal:link[1]"/>
        <xsl:variable name="srckey">
          <xsl:call-template name="mal.link.xref.linkid">
            <xsl:with-param name="node" select="$srclink"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="srcnode" select="key('mal.cache.key', $srckey)"/>
        <xsl:call-template name="mal2html.page.linktrails">
          <xsl:with-param name="node" select="$srcnode"/>
        </xsl:call-template>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="mal2html.page.linktrails">
        <xsl:with-param name="node" select="."/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
-->

<!--
<xsl:template mode="html.footer.mode" match="mal:page"/>
-->

<!--
<xsl:template name="html.bottom.custom">
  <div class="bottom"><div class="content">
  <div class="bottom-badge">
    <xsl:for-each select="/mal:page/mal:info/mal:credit[mal:years]">
      <div>
        <xsl:text>© </xsl:text>
        <xsl:value-of select="mal:years[1]"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="mal:name[1]"/>
      </div>
    </xsl:for-each>
  </div>
  <xsl:variable name="license" select="/mal:page/mal:info/mal:license[1]"/>
  <xsl:if test="$license">
    <div class="bottom-badge ui-expander">
      <div class="yelp-data yelp-data-ui-expander" data-yelp-expanded="false"/>
      <div class="inner">
      <div class="hgroup">
        <xsl:choose>
          <xsl:when test="$license/@href = 'http://creativecommons.org/licenses/by-sa/3.0/us/'">
            <xsl:text>cc-by-sa 3.0 (us)</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>License</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
      </div>
      <div class="region">
        <div class="contents">
          <xsl:apply-templates mode="mal2html.block.mode" select="$license/*"/>
        </div>
      </div>
    </div>
    </div>
  </xsl:if>
  <div class="bottom-badge">
    <div>Powered by </div>
    <a href="http://projectmallard.org">
      <img alt="Mallard" width="80" height="15">
        <xsl:attribute name="src">
          <xsl:value-of select="$mal.site.root"/>
          <xsl:text>mallard-badge.png</xsl:text>
        </xsl:attribute>
      </img>
    </a>
  </div>
  <div class="bottom-badge">
    <xsl:text>Hosted by </xsl:text>
    <a href="http://syllogist.net/">Syllogist</a>
  </div>
  </div></div>
</xsl:template>
-->

</xsl:stylesheet>

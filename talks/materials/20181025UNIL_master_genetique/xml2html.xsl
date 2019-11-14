<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b>2017-10-10</xd:p>
            <xd:p><xd:b>Author:</xd:b>Elena Spadini</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:param name="break" select="show"></xsl:param>
    
    <xsl:template match="//tei:body">
        
        <html>
            
            
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="//tei:p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="//tei:hi[@rend='underline']">
        <u><xsl:apply-templates/></u>
    </xsl:template>
    
    <xsl:template match="//tei:hi[@rend='red']">
        <span class="red"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="//tei:lb">
        <br/>
    </xsl:template>
    
    <xsl:template match="//tei:unclear">
        <span class="grey"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="//tei:del">  
        <span class="{name()}" type="{@type}" seq="{@seq}" hand="{@hand}"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="//tei:add">  
        <span class="{name()}" place="{@place}" seq="{@seq}" hand="{@hand}"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    
    <!-- 
         <xsl:template match="kp:milestone">
        <span class="milestone"><xsl:value-of select="@n"/></span>
    </xsl:template>
    
    <xsl:template match="kp:pb">
        <span class="pb"><xsl:value-of select="@n"/></span>
    </xsl:template>
    
    
    
    <xsl:template match="kp:ab">
        <div class="ab">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="kp:choice | kp:reg">  
        <span class="{name()}"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="kp:orig">      
        <xsl:choose>
            <xsl:when test="parent::kp:choice"><span class="orig"><xsl:apply-templates/></span></xsl:when>
            <xsl:otherwise><span class="orig-solo"><xsl:apply-templates/></span></xsl:otherwise>
        </xsl:choose>      
    </xsl:template>
        
          <xsl:template match="kp:teiHeader"/>
    <xsl:template match="text">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="kp:body">
        <xsl:apply-templates/>
    </xsl:template>
        <xsl:template match="kp:div[@type='title | epigram | discourse']">
        <h3 class="label"><xsl:value-of select="upper-case(@type)"/></h3>
        <div class="{name()}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

        
        <xsl:template match="kp:unclear | kp:supplied | kp:subst | kp:add | kp:del | kp:pc | kp:fw">
       <span class="{name()}">
           <xsl:apply-templates/>
       </span>
   </xsl:template>
    
   
    
    <xsl:template match="kp:seg[@rend='superscript']">
        <span class="superscript"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="kp:note">*
        <xsl:if test="@place='margin'">
            <div class="margin-note"><xsl:text>[*] </xsl:text><xsl:apply-templates/>
        </div>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="c">
        <xsl:choose>
            <xsl:when test="@rend='double-hyphen'">
            <xsl:text>=</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    -->
    
    
</xsl:stylesheet>

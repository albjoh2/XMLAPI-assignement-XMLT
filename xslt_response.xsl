<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <table border='1'>
      <xsl:for-each select="//NEWSPAPER">
        <tr>
          <td>
            <p style="font-size:30px">
              <xsl:value-of select="@NAME" />
            </p>
            <p>
              <xsl:value-of select="@SUBSCRIBERS"/>
            </p>
            <p>
              <xsl:value-of select="@TYPE"/>
            </p>
          </td>

          <td>
            <table class="inner" border='1'>
              <xsl:for-each select=".//ARTICLE">
                <td style="vertical-align: baseline;">
                  <div style="margin: 0;">
                    <p>
                      <xsl:value-of select="@ID"/>
                    </p>
                    <p>
                      <xsl:value-of select="@TIME"/>
                    </p>
                    <p>
                      <xsl:value-of select="@DESCRIPTION"/>
                    </p>

                    <xsl:choose>
                      <xsl:when test="@DESCRIPTION = 'Review'">
                        <div style="background-color: #ffeeee;">
                          <xsl:apply-templates/>
                        </div>
                      </xsl:when>

                      <xsl:otherwise>
                        <div style="background-color: #eeffee;">
                          <xsl:apply-templates/>
                        </div>
                      </xsl:otherwise>
                    </xsl:choose>

                  </div>
                </td>
              </xsl:for-each>
            </table>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

  <xsl:template match="HEADING">
    <xsl:for-each select="./TEXT">
      <h3>
        <xsl:value-of select="."/>
      </h3>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="STORY">
    <xsl:for-each select="./TEXT">
      <p>
        <xsl:value-of select="."/>
      </p>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
 
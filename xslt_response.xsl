<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <table border='1'>
      <xsl:for-each select="//NEWSPAPER">
        <tr>
          <td>
            <p>
              <xsl:value-of select="@NAME"/>
            </p>
            <p>
              <xsl:value-of select="@SUBSCRIBERS"/>
            </p>
            <p>
              <xsl:value-of select="@TYPE"/>
            </p>
          </td>

          <td>
            <table border='1'>
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
                          <xsl:for-each select="./*">
                            <xsl:choose>
                              <xsl:when test="name() = 'HEADING'">
                                <h3>
                                  <xsl:value-of select="TEXT"/>
                                </h3>
                              </xsl:when>
                              <xsl:when test="name() = 'STORY'">
                                <p>
                                  <xsl:value-of select="TEXT"/>
                                </p>
                              </xsl:when>
                            </xsl:choose>
                          </xsl:for-each>
                        </div>
                      </xsl:when>


                      <xsl:otherwise>
                        <div style="background-color: #eeffee;">
                          <xsl:for-each select="./*">
                            <xsl:choose>
                              <xsl:when test="name() = 'HEADING'">
                                <h3>
                                  <xsl:value-of select="TEXT"/>
                                </h3>
                              </xsl:when>
                              <xsl:when test="name() = 'STORY'">
                                <p>
                                  <xsl:value-of select="TEXT"/>
                                </p>
                              </xsl:when>
                            </xsl:choose>
                          </xsl:for-each>
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
</xsl:stylesheet>
 
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    xmlns:cavpp="http://calpreservation.org/projects/audiovisual-preservation/">
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="record">
        <cavpp xmlns="http://calpreservation.org/projects/audiovisual-preservation/" xmlns:cavpp="http://calpreservation.org/projects/audiovisual-preservation/">
            
            <xsl:call-template name="descriptive"/>
            
            <xsl:call-template name="rights"/>
            
            <xsl:call-template name="technical"/>
            
            <xsl:call-template name="administrative"/>
            
            <ObjectIdentifiers>
                <xsl:call-template name="split">
                    <xsl:with-param name="data" select="ObjectIdentifier/text()"/>
                </xsl:call-template>
            </ObjectIdentifiers>
            
            <legacyMetadata>
                <xsl:call-template name="unmapped_from_CDM"/>    
            </legacyMetadata>
            

        </cavpp>
    </xsl:template>
    <xsl:template name="unmapped_from_CDM" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">


        <timecodecontentbegins>
            <xsl:value-of select="timecodecontentbegins"/>
        </timecodecontentbegins>
        
        <basethickness>
            <xsl:value-of select="basethickness"/>
        </basethickness>
        
        <institutionalrightssatement>
            <xsl:value-of select="institutionalrightssatement"/>
        </institutionalrightssatement>
        
        <itemurl>
            <xsl:value-of select="itemurl"/>
        </itemurl>
        
        <oclcnumber>
            <xsl:value-of select="oclcnumber"/>
        </oclcnumber>
        
        <cdmnumber>
            <xsl:value-of select="cdmnumber"/>
        </cdmnumber>
        
        <cdmfilename>
            <xsl:value-of select="cdmfilename"/>
        </cdmfilename>
        
        <cdmfilepath>
            <xsl:value-of select="cdmfilepath"/>
        </cdmfilepath>
    </xsl:template>
    <xsl:template name="administrative" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">
        <AdministrativeMetadata>
            <internetArchiveURL><xsl:value-of select="InternetArchiveURL"/></internetArchiveURL>
            <mediaType><xsl:value-of select="mediatype"/></mediaType>
            <assetType><xsl:value-of select="assettype"/></assetType>
            <projectIdentifier><xsl:value-of select="projectidentifier"/></projectIdentifier>
            <institutionalURL><xsl:value-of select="institutionurl"/></institutionalURL>
            <objectARK><xsl:value-of select="objectark"/></objectARK>
            <institutionARK><xsl:value-of select="institutionark"/></institutionARK>
            <projectNote><xsl:value-of select="projectnote"/></projectNote>
            <CAVPPQualityControlNotes>
                <CAVPPQualityControlNotes>
                    <qualityControlNote><xsl:value-of select="qcnotes"/></qualityControlNote>
                </CAVPPQualityControlNotes>
            </CAVPPQualityControlNotes>
        </AdministrativeMetadata>
    </xsl:template>
    <xsl:template name="technical" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">
        <TechnicalMetadataAboutOriginal>
            <generation><xsl:value-of select="generation"/></generation>                   
            <gaugeAndFormat><xsl:value-of select="gaugeandformat"/></gaugeAndFormat>
            <totalNumberofReelsOrTapes><xsl:value-of select="totalnumberofreels"/></totalNumberofReelsOrTapes>
            <duration><xsl:value-of select="duration"/></duration>
            <silentOrSound><xsl:value-of select="silentorsound"/></silentOrSound>
            <channelConfiguration><xsl:value-of select="channelconfig"/></channelConfiguration>
            <trackStandard></trackStandard>
            <runningSpeed></runningSpeed>
            <aspectRatio></aspectRatio>
            <subtitlesOrIntertitlesOrClosedCaption><xsl:value-of select="subtitles"/></subtitlesOrIntertitlesOrClosedCaption>
            <stockManufacturer><xsl:value-of select="stockmanufacturer"/></stockManufacturer>
            <baseType><xsl:value-of select="basetype"/></baseType>
            <AdditionalTechnicalNotesForOverallWork>
                <AdditionalTechnicalNoteForOverallWork>
                    <note><xsl:value-of select="addltechnicalnotes"/></note>    
                </AdditionalTechnicalNoteForOverallWork>
            </AdditionalTechnicalNotesForOverallWork>
        </TechnicalMetadataAboutOriginal>
    </xsl:template>
    <xsl:template name="rights" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">
        <RightsMetadata>
            <copyrightStatement><xsl:value-of select="copyrightstatement"/></copyrightStatement>
            <copyrightHolder><xsl:value-of select="copyrightholder"/></copyrightHolder>
            <coyrightholderinfo><xsl:value-of select="coyrightholderinfo"/></coyrightholderinfo>
            <copyrightdate><xsl:value-of select="copyrightdate"/></copyrightdate>
            <copyrightnotice><xsl:value-of select="copyrightnotice"/></copyrightnotice>
            <institutionalRightsStatementURL></institutionalRightsStatementURL>
        </RightsMetadata>
    </xsl:template>
    <xsl:template name="descriptive" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">
        <DescriptiveMetadata>
            <institutionName>
                <xsl:value-of select="institution"/>
            </institutionName>
            <Title>
                <value><xsl:value-of select="mainorsuppliedtitle"/></value>
                <type>Main or supplied title</type>
            </Title>
            <AdditionalTitles>
                <xsl:if test="normalize-space(seriestitle)">
                    <AdditionalTitle>
                        <value><xsl:value-of select="seriestitle"/></value>
                        <type>Series Title</type>
                    </AdditionalTitle>
                </xsl:if>
                <xsl:if test="normalize-space(additionaltitle)">
                    <AdditionalTitle>
                        <value><xsl:value-of select="additionaltitle"/></value>
                        <type>Additional Title</type>
                    </AdditionalTitle>
                </xsl:if>
            </AdditionalTitles>                
            <CallNumbers>
                <xsl:if test="normalize-space(callnumber)">
                    <CallNumber>
                        <value><xsl:value-of select="callnumber"/></value>
                        <type></type>
                    </CallNumber>
                </xsl:if>
            </CallNumbers>
            
            <Creators>
                <xsl:if test="normalize-space(director)">
                    <xsl:for-each select="director">
                        <Creator>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Director</role>
                        </Creator>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(writer)">
                    <xsl:for-each select="writer">
                        <Creator>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Writer</role>
                        </Creator>    
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(interviewer)">
                    <xsl:for-each select="interviewer">
                        <Creator>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Interviewer</role>
                        </Creator>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="performer">
                    <xsl:for-each select="performer">
                        <Creator>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Performer</role>    
                        </Creator>    
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(creator)">
                    <Creator>
                        <name><xsl:value-of select="creator"/></name>
                        <role>Creator</role>
                    </Creator>
                </xsl:if>
            </Creators>
            <Dates>
                <xsl:if test="normalize-space(datecreated)">
                    <xsl:for-each select="datecreated">
                        <Date>
                            <date><xsl:value-of select="text()"/></date>
                            <dateType>Created</dateType>
                        </Date>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(datemodified)">
                    <xsl:for-each select="datemodified">
                        <Date>
                            <date><xsl:value-of select="text()"/></date>
                            <dateType>Modified</dateType>
                        </Date>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(datepublished)">
                    <xsl:for-each select="datepublished">
                        <Date>
                            <date><xsl:value-of select="text()"/></date>
                            <dateType>Published</dateType>
                        </Date>
                    </xsl:for-each>
                </xsl:if>
                
            </Dates>
            <countryOfCreation><xsl:value-of select="countryofcreation"/></countryOfCreation>
            <whyIsSignificant><xsl:value-of select="whysignificant"/></whyIsSignificant>
            <Descriptions>
                <xsl:if test="normalize-space(description)">
                    <Description>
                        <value>
                            <xsl:value-of select="description"/>    
                        </value>
                    </Description>        
                </xsl:if>
            </Descriptions>
            <Contributors>
                <xsl:if test="normalize-space(interviewee)">
                    <xsl:for-each select="interviewee">
                        <Contributor>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Interviewee</role>
                        </Contributor>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(speaker)">
                    <xsl:for-each select="speaker">
                        <Contributor>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Speaker</role>
                        </Contributor>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(musician)">
                    <xsl:for-each select="musician">
                        <Contributor>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Musician</role>
                        </Contributor>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="normalize-space(contributor)">
                    <xsl:for-each select="contributor">
                        <Contributor>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Contributor</role>
                        </Contributor>
                    </xsl:for-each>
                </xsl:if>
            </Contributors>
            <Publisher>
                <xsl:if test="normalize-space(publisher)">
                    <xsl:for-each select="publisher">
                        <Publisher>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Publisher</role>
                        </Publisher>    
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="normalize-space(distributor)">
                    <xsl:for-each select="distributor">
                        <Publisher>
                            <name><xsl:value-of select="text()"/></name>
                            <role>Publisher</role>
                        </Publisher>    
                    </xsl:for-each>
                </xsl:if>
            </Publisher>
            <LanguagesOfMaterial>
                <xsl:if test="normalize-space(language)">
                <xsl:for-each select="language">
                        <language><xsl:value-of select="text()"/></language>
                </xsl:for-each>
                </xsl:if>
            </LanguagesOfMaterial>
            <genre>
                <value></value>
                <source></source>
            </genre>
            <Coverages>
                <xsl:if test="normalize-space(Converage)">
                <Converage>
                    <value><xsl:value-of select="temporalcoverage"/></value>
                    <type>temporal</type> 
                    <source></source>                            
                </Converage>
                </xsl:if>
            </Coverages>
            <collectionGuideTitle><xsl:value-of select="collectionguidetitle"/></collectionGuideTitle>
            <collectionGuideURL><xsl:value-of select="collectionguideurl"/></collectionGuideURL>
            <Relationships>
                <relationship>
                    <value><xsl:value-of select="relationship"/></value>
                    <type></type>
                </relationship>                                
            </Relationships>
            <AdditionalDescriptiveNotesForOverallWork>
                <additionalDescriptiveNoteForOverallWork>
                    <note><xsl:value-of select="addldescriptivenotes"/></note>    
                </additionalDescriptiveNoteForOverallWork>      
            </AdditionalDescriptiveNotesForOverallWork>                   
            <transcript><xsl:value-of select="transcript"/></transcript>
            <CatalogerNotes>                        
                <CatalogerNote>
                    <note><xsl:value-of select="catalogernotes"/></note>                           
                </CatalogerNote>
            </CatalogerNotes>
            
        </DescriptiveMetadata>
    </xsl:template>
    <xsl:template match="text()" name="split" xmlns="http://calpreservation.org/projects/audiovisual-preservation/">
        <xsl:param name="data" select="."/>
        <xsl:if test="string-length($data)">
            
            <xsl:if test="not($data=.)">
                
            </xsl:if>
            <objectIdentifier>
                <xsl:value-of select="substring-before(concat(normalize-space($data), ';'), ';')"/>    
            </objectIdentifier>
            
            <xsl:call-template name="split">
                <xsl:with-param name="data" select="substring-after($data, ';')"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
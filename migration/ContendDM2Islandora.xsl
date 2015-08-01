<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    xmlns:cavpp="http://calpreservation.org/projects/audiovisual-preservation/">
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="metadata">
        <xsl:for-each select="record">
            <cavpp xmlns="http://calpreservation.org/projects/audiovisual-preservation/" xmlns:cavpp="http://calpreservation.org/projects/audiovisual-preservation/">
                <DescriptiveMetadata>
                    <institutionName>
                        <xsl:value-of select="institution"/>
                    </institutionName>
                    <Title>
                        <value><xsl:value-of select="mainorsuppliedtitle"/></value>
                        <type>Main or supplied title</type>
                    </Title>
                    <AdditionalTitles>
                        <AdditionalTitle>
                        <value><xsl:value-of select="additionaltitle"/></value>
                        <type>Additional Title</type>
                        </AdditionalTitle>
                    </AdditionalTitles>

                    <Callnumbers>
                        <callnumber>
                            <value><xsl:value-of select="callnumber"/></value>
                            <type></type>
                        </callnumber>
                    </Callnumbers>
                </DescriptiveMetadata>
                
                <RightsMetadata>
                    
                </RightsMetadata>
                
                <TechnicalMetadataAboutOriginal>
                    
                </TechnicalMetadataAboutOriginal>
                
                <AdministrativeMetadata>
                    
                </AdministrativeMetadata>
                
                <ObjectIdentifiers>
                    
                </ObjectIdentifiers>
            <InternetArchiveURL>
                <xsl:value-of select="InternetArchiveURL"/>
            </InternetArchiveURL>

            <ObjectIdentifier>
                <xsl:value-of select="ObjectIdentifier"/>
            </ObjectIdentifier>

            <projectidentifier>
                <xsl:value-of select="projectidentifier"/>
            </projectidentifier>

            <projectnote>
                <xsl:value-of select="projectnote"/>
            </projectnote>

            <assettype>
                <xsl:value-of select="assettype"/>
            </assettype>

            <mediatype>
                <xsl:value-of select="mediatype"/>
            </mediatype>

            <generation>
                <xsl:value-of select="generation"/>
            </generation>





            <seriestitle>
                <xsl:value-of select="seriestitle"/>
            </seriestitle>

            <description>
                <xsl:value-of select="description"/>
            </description>

            <whysignificant>
                <xsl:value-of select="whysignificant"/>
            </whysignificant>

            <performer>
                <xsl:value-of select="performer"/>
            </performer>

            <performer>
                <xsl:value-of select="performer"/>
            </performer>

            <countryofcreation>
                <xsl:value-of select="countryofcreation"/>
            </countryofcreation>

            <datecreated>
                <xsl:value-of select="datecreated"/>
            </datecreated>

            <datepublished>
                <xsl:value-of select="datepublished"/>
            </datepublished>

            <copyrightstatement>
                <xsl:value-of select="copyrightstatement"/>
            </copyrightstatement>

            <gaugeandformat>
                <xsl:value-of select="gaugeandformat"/>
            </gaugeandformat>

            <totalnumberofreels>
                <xsl:value-of select="totalnumberofreels"/>
            </totalnumberofreels>

            <duration>
                <xsl:value-of select="duration"/>
            </duration>

            <silentorsound>
                <xsl:value-of select="silentorsound"/>
            </silentorsound>

            <publisher>
                <xsl:value-of select="publisher"/>
            </publisher>

            <distributor>
                <xsl:value-of select="distributor"/>
            </distributor>

            <temporalcoverage>
                <xsl:value-of select="temporalcoverage"/>
            </temporalcoverage>

            <collectionguidetitle>
                <xsl:value-of select="collectionguidetitle"/>
            </collectionguidetitle>

            <collectionguideurl>
                <xsl:value-of select="collectionguideurl"/>
            </collectionguideurl>

            <relationship>
                <xsl:value-of select="relationship"/>
            </relationship>

            <timecodecontentbegins>
                <xsl:value-of select="timecodecontentbegins"/>
            </timecodecontentbegins>

            <channelconfig>
                <xsl:value-of select="channelconfig"/>
            </channelconfig>

            <subtitles>
                <xsl:value-of select="subtitles"/>
            </subtitles>

            <stockmanufacturer>
                <xsl:value-of select="stockmanufacturer"/>
            </stockmanufacturer>

            <basetype>
                <xsl:value-of select="basetype"/>
            </basetype>

            <basethickness>
                <xsl:value-of select="basethickness"/>
            </basethickness>

            <copyrightholder>
                <xsl:value-of select="copyrightholder"/>
            </copyrightholder>

            <coyrightholderinfo>
                <xsl:value-of select="coyrightholderinfo"/>
            </coyrightholderinfo>

            <copyrightdate>
                <xsl:value-of select="copyrightdate"/>
            </copyrightdate>

            <copyrightnotice>
                <xsl:value-of select="copyrightnotice"/>
            </copyrightnotice>

            <institutionalrightssatement>
                <xsl:value-of select="institutionalrightssatement"/>
            </institutionalrightssatement>

            <objectark>
                <xsl:value-of select="objectark"/>
            </objectark>

            <institutionark>
                <xsl:value-of select="institutionark"/>
            </institutionark>

            <institutionurl>
                <xsl:value-of select="institutionurl"/>
            </institutionurl>

            <qcnotes>
                <xsl:value-of select="qcnotes"/>
            </qcnotes>

            <addldescriptivenotes>
                <xsl:value-of select="addldescriptivenotes"/>
            </addldescriptivenotes>

            <addltechnicalnotes>
                <xsl:value-of select="addltechnicalnotes"/>
            </addltechnicalnotes>

            <transcript>
                <xsl:value-of select="transcript"/>
            </transcript>

            <catalogernotes>
                <xsl:value-of select="catalogernotes"/>
            </catalogernotes>

            <itemurl>
                <xsl:value-of select="itemurl"/>
            </itemurl>

            <oclcnumber>
                <xsl:value-of select="oclcnumber"/>
            </oclcnumber>

            <datecreated>
                <xsl:value-of select="datecreated"/>
            </datecreated>

            <datemodified>
                <xsl:value-of select="datemodified"/>
            </datemodified>

            <cdmnumber>
                <xsl:value-of select="cdmnumber"/>
            </cdmnumber>

            <cdmfilename>
                <xsl:value-of select="cdmfilename"/>
            </cdmfilename>

            <cdmfilepath>
                <xsl:value-of select="cdmfilepath"/>
            </cdmfilepath>

        </cavpp>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:wd="urn:com.workday.report/INT041_WTW_Worker_Demographic_Outbound_Custom_Report"
    xmlns:this="urn:this-stylesheet" exclude-result-prefixes="xs" version="2.0">
    
    <!-- File Information 
     Integration:      INT041 WTW Worker Demographics Outbound Custom Report
     Filename:         INT042_WTW_ Worker_Demographic_Outbound_XSLT
     Developed by:     McKenzie Jackson
     Date:             06/02/2023   

     -->
    
    <xsl:output method="text" indent="yes"/>
    
    <!-- Declare variables -->
    <xsl:variable name="linefeed" select="'&#13;&#10;'"/>
    <xsl:variable name="delimiter" select="','"/>
    <xsl:variable name="quote">"</xsl:variable>
    
    <!-- Create file -->
    <xsl:template match="/">
        <xsl:call-template name="Header_Record"/>
        <xsl:value-of select="$linefeed"/>
        <xsl:for-each select="wd:Report_Data/wd:Report_Entry">
            <xsl:call-template name="Journal_Line"/>
        </xsl:for-each>
    </xsl:template>
    
    <!-- Create Header Record -->
    <xsl:template name="Header_Record">
        
        <!-- SocialSecurityNumber -->
        <xsl:value-of select="this:insertDelimiter('Social Security Number')"/>
        
        <!-- Country -->
        <xsl:value-of select="this:insertDelimiter('Country')"/>
        
        <!-- Honorific-->
        <xsl:value-of select="this:insertDelimiter('Honorific')"/>
        
        <!-- First Name -->
        <xsl:value-of select="this:insertDelimiter('First Name')"/>
        
        <!-- Middle Name -->
        <xsl:value-of select="this:insertDelimiter('Middle Name')"/>
        
        <!-- Last Name -->
        <xsl:value-of select="this:insertDelimiter('Last Name')"/>
        
        <!-- Gender -->
        <xsl:value-of select="this:insertDelimiter('Gender')"/>
        
        <!-- Date of Birth -->
        <xsl:value-of select="this:insertDelimiter('Date of Birth')"/>
        
        <!-- Date of Death -->
        <xsl:value-of select="this:insertDelimiter('Date of Death')"/>
        
        <!-- Employee ID -->
        <xsl:value-of select="this:insertDelimiter('Employee ID')"/>
        
        <!-- Address Type -->
        <xsl:value-of select="this:insertDelimiter('Address Type')"/>
        
        <!-- Address Line 1 -->
        <xsl:value-of select="this:insertDelimiter('Address Line 1')"/>
        
        <!-- Address Line 2 -->
        <xsl:value-of select="this:insertDelimiter('Address Line 2')"/>
        
        <!-- Address Line 3 -->
        <xsl:value-of select="this:insertDelimiter('Address Line 3')"/>
        
        <!-- City -->
        <xsl:value-of select="this:insertDelimiter('City')"/>
        
        <!-- State -->
        <xsl:value-of select="this:insertDelimiter('State')"/>
        
        <!-- Zip Code -->
        <xsl:value-of select="this:insertDelimiter('Zip Code')"/>
        
        <!-- Contact Name -->
        <xsl:value-of select="this:insertDelimiter('Contact Name')"/>
        
        <!-- Phone -->
        <xsl:value-of select="this:insertDelimiter('Phone')"/>
        
        <!-- Fax -->
        <xsl:value-of select="this:insertDelimiter('Fax')"/>
        
        <!-- Email-->
        <xsl:value-of select="this:insertDelimiter('Email')"/>
        
        <!-- Bad Address Flag -->
        <xsl:value-of select="this:insertDelimiter('Bad Address Flag')"/>
        
        <!-- Foreign Address Flag -->
        <xsl:value-of select="this:insertDelimiter('Foreign Address Flag')"/>
        
        <!-- Original Hire Date -->
        <xsl:value-of select="this:insertDelimiter('Original Hire Date')"/>
        
        <!-- Date Started -->
        <xsl:value-of select="this:insertDelimiter('Date Started')"/>
        
        <!-- Pension Credit Service Date -->
        <xsl:value-of select="this:insertDelimiter('Pension Credit Service Date')"/>
        
        <!-- Pension Vesting Date -->
        <xsl:value-of select="this:insertDelimiter('Pension Vesting Date')"/>
        
        <!-- Aquisition Date -->
        <xsl:value-of select="this:insertDelimiter('Acquistion Date')"/>
        
        <!-- Aquisition Code -->
        <xsl:value-of select="this:insertDelimiter('Acquisition Code')"/>
        
        <!-- Payroll Status Effective Date -->
        <xsl:value-of select="this:insertDelimiter('Payroll Status Effective Date')"/>
        
        <!-- Payroll Status -->
        <xsl:value-of select="this:insertDelimiter('Payroll Status')"/>
        
        <!-- Business Unit -->
        <xsl:value-of select="this:insertDelimiter('Business Unit')"/>
        
        <!-- Benefit Group -->
        <xsl:value-of select="this:insertDelimiter('Benefit Group')"/>
        
        <!-- FT/PT Status-->
        <xsl:value-of select="this:insertDelimiter('FT/PT Status')"/>
        
        <!-- Grp -->
        <xsl:value-of select="this:insertDelimiter('Grp')"/>
        
        <!-- Reg -->
        <xsl:value-of select="this:insertDelimiter('Region')"/>
        
        <!-- Div -->
        <xsl:value-of select="this:insertDelimiter('Division')"/>
        
        <!-- Dis-->
        <xsl:value-of select="this:insertDelimiter('District')"/>
        
        <!-- Union Code -->
        <xsl:value-of select="this:insertDelimiter('Union')"/>
        
    </xsl:template>
    
    <!-- Create Employee Records -->
    <xsl:template name="Journal_Line">
      
        <!-- SocialSecurityNumber -->
        <xsl:value-of select="this:insertDelimiter(wd:SSN)"/>
        
        <!-- Country -->
        <xsl:value-of select="this:insertDelimiter(wd:Country/wd:ID[@wd:type='ISO_3166-1_Alpha-3_Code'])"/>
        
        <!-- Honorific-->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- First Name -->
        <xsl:value-of select="this:insertDelimiter(wd:First_Name)"/>
        
        <!-- Middle Name -->
        <xsl:value-of select="this:insertDelimiter(wd:Middle_Name)"/>
        
        <!-- Last Name -->
        <xsl:value-of select="this:insertDelimiter(wd:Last_Name)"/>
        
        <!-- Gender -->
        <xsl:value-of select="this:insertDelimiter(wd:Gender)"/>
        
        <!-- Date of Birth -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:DOB,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Date of Death -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:DOD,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Employee ID -->
        <xsl:value-of select="this:insertDelimiter(wd:Employee_ID)"/>
        
        <!-- Address Type -->
        <xsl:value-of select="this:insertDelimiter('RES')"/>
        
        <!-- Address Line 1 -->
        <xsl:value-of select="this:insertDelimiter(wd:Line_1)"/>
        
        <!-- Address Line 2 -->
        <xsl:value-of select="this:insertDelimiter(wd:Line_2)"/>
        
        <!-- Address Line 3 -->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- City -->
        <xsl:value-of select="this:insertDelimiter(wd:City)"/>
        
        <!-- State -->
        <xsl:value-of select="this:insertDelimiter(wd:State/wd:ID[@wd:type='ISO_3166-2_Code'])"/>
        
        <!-- Zip Code -->
        <xsl:value-of select="this:insertDelimiter(wd:Zip_Code)"/>
        
        <!-- Contact Name -->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- Phone -->
        <xsl:value-of select="this:insertDelimiter(translate(wd:Phone, '()-+ ',''))"/>
        
        <!-- Fax -->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- Email-->
        <xsl:value-of select="this:insertDelimiter(wd:Email)"/>
        
        <!-- Bad Address Flag -->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- Foreign Address Flag -->
        <xsl:value-of select="this:insertDelimiter(wd:Foreign_Address_Flag)"/>
        
        <!-- Original Hire Date -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Original_Hire_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Date Started -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Hire_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Pension Credit Service Date -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Pension_Credit_Service_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Pension Vesting Date -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Pension_Vesting_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Aquisition Date -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Acquisition_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Aquisition Code -->
        <xsl:value-of select="this:insertDelimiter(wd:Acquisition_Code/@wd:Descriptor)"/>
        
        <!-- Payroll Status Effective Date -->
        <xsl:value-of select="this:insertDelimiter(format-date(wd:Payroll_Status_Effective_Date,'[M01]/[D01]/[Y0001]'))"/>
        
        <!-- Payroll Status -->
        <xsl:value-of select="this:insertDelimiter(wd:Payroll_Status)"/>
        
        <!-- Business Unit -->
        <xsl:value-of select="this:insertDelimiter(wd:Business_Unit)"/>
        
        <!-- Benefit Group -->
        <xsl:value-of select="this:insertDelimiter(wd:Benefit_Group/@wd:Descriptor)"/>
        
        <!-- FT/PT Status-->
        <xsl:value-of select="this:insertDelimiter(wd:Time_Type)"/>
        
        <!-- Grp -->
        <xsl:value-of select="this:insertDelimiter('')"/>
        
        <!-- Reg -->
        <xsl:value-of select="this:insertDelimiter(wd:Region)"/>
        
        <!-- Div -->
        <xsl:value-of select="this:insertDelimiter(wd:Division)"/>
        
        <!-- Dis-->
        <xsl:value-of select="this:insertDelimiter(wd:District)"/>
        
        <!-- Union Code -->
        <xsl:value-of select="this:insertDelimiter(wd:Union)"/>
        
        <xsl:value-of select="$linefeed"/>
        
    </xsl:template>
    
    
    
    <!-- Declare Functions -->
    <!-- this:clean -->
    
    <!--  DESCRIPTION:
    Function is translating native, accented characters to latin alphabet.
    Function translate() is taking inputString parameter, searching through 
    provided character list (second input string in the function) and replacing
    existing non latin character with character on the same position from 
    last input string.
    
    PARAMETERS:
    inputString - Pass String value which contain accented characters
    -->
    <xsl:function name="this:clean">
        <xsl:param name="inputString"/>
        <xsl:variable name="stringValue2">
            <xsl:value-of select="translate($inputString, 'ºª½¼»±²³¯', ' ')"/>
        </xsl:variable>
        <xsl:value-of
            select="translate($stringValue2, 'äÄöÖüÜßáÁàÀâÂéÉèÈêÊíÍìÌîÎóÓòÒôÔúÚùÙûÛøÝŸÃÑÕÇÅØÆŒÐÞ¡~^;', 'aAoOuUsaAaAaAeEeEeEiIiIiIoOoOoOuUuUuUoYYANOCAO I ')"
        />
    </xsl:function>
    
    <xsl:function name="this:insertDelimiter">
        <xsl:param name="value"/>
        <xsl:choose>
            <xsl:when test="contains($value, ',')">
                <xsl:value-of select="$quote"/>
                <xsl:value-of select="$value"/>
                <xsl:value-of select="concat($quote, $delimiter)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="concat($value, $delimiter)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
	<!-- File Information 
      File commit check on 1/6/2026
     -->
    
</xsl:stylesheet>

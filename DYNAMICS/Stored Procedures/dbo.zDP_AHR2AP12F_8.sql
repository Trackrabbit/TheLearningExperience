SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP12F_8] (@REFSOURCEDDL_I_RS smallint, @REFERENCESOURCE_I_RS char(31), @LLASTNAME_I_RS char(21), @FFIRSTNAME_I_RS char(15), @APPLICANTNUMBER_I_RS numeric(19,5), @REFSOURCEDDL_I_RE smallint, @REFERENCESOURCE_I_RE char(31), @LLASTNAME_I_RE char(21), @FFIRSTNAME_I_RE char(15), @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @REFSOURCEDDL_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, EEOGENDER_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .AHR2AP12 ORDER BY REFSOURCEDDL_I ASC, REFERENCESOURCE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END ELSE IF @REFSOURCEDDL_I_RS = @REFSOURCEDDL_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, EEOGENDER_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .AHR2AP12 WHERE REFSOURCEDDL_I = @REFSOURCEDDL_I_RS AND REFERENCESOURCE_I BETWEEN @REFERENCESOURCE_I_RS AND @REFERENCESOURCE_I_RE AND LLASTNAME_I BETWEEN @LLASTNAME_I_RS AND @LLASTNAME_I_RE AND FFIRSTNAME_I BETWEEN @FFIRSTNAME_I_RS AND @FFIRSTNAME_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY REFSOURCEDDL_I ASC, REFERENCESOURCE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, EEOGENDER_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .AHR2AP12 WHERE REFSOURCEDDL_I BETWEEN @REFSOURCEDDL_I_RS AND @REFSOURCEDDL_I_RE AND REFERENCESOURCE_I BETWEEN @REFERENCESOURCE_I_RS AND @REFERENCESOURCE_I_RE AND LLASTNAME_I BETWEEN @LLASTNAME_I_RS AND @LLASTNAME_I_RE AND FFIRSTNAME_I BETWEEN @FFIRSTNAME_I_RS AND @FFIRSTNAME_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY REFSOURCEDDL_I ASC, REFERENCESOURCE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP12F_8] TO [DYNGRP]
GO

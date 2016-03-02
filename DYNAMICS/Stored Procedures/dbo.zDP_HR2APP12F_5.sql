SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP12F_5] (@COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @DEPARTMENTCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @LLASTNAME_I_RS char(21), @FFIRSTNAME_I_RS char(15), @APPLICANTNUMBER_I_RS numeric(19,5), @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @DEPARTMENTCODE_I_RE char(7), @POSITIONCODE_I_RE char(7), @LLASTNAME_I_RE char(21), @FFIRSTNAME_I_RE char(15), @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND LLASTNAME_I BETWEEN @LLASTNAME_I_RS AND @LLASTNAME_I_RE AND FFIRSTNAME_I BETWEEN @FFIRSTNAME_I_RS AND @FFIRSTNAME_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND LLASTNAME_I BETWEEN @LLASTNAME_I_RS AND @LLASTNAME_I_RE AND FFIRSTNAME_I BETWEEN @FFIRSTNAME_I_RS AND @FFIRSTNAME_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, LLASTNAME_I ASC, FFIRSTNAME_I ASC, APPLICANTNUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP12F_5] TO [DYNGRP]
GO

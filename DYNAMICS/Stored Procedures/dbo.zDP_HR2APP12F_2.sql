SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP12F_2] (@SSN_I_RS char(15), @SSN_I_RE char(15)) AS  set nocount on IF @SSN_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 ORDER BY SSN_I ASC, DEX_ROW_ID ASC END ELSE IF @SSN_I_RS = @SSN_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 WHERE SSN_I = @SSN_I_RS ORDER BY SSN_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, GENDERGB_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .HR2APP12 WHERE SSN_I BETWEEN @SSN_I_RS AND @SSN_I_RE ORDER BY SSN_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP12F_2] TO [DYNGRP]
GO

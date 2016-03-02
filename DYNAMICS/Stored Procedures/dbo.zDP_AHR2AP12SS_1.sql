SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP12SS_1] (@APPLICANTNUMBER_I numeric(19,5)) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, MIDLNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTRY, HOMEPHONE, WORKPHONE, EXT_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, STATUS0_I, REJECTREASON_I, DSCRIPTN, RELOCATION_I, REPLYLETTERSENT_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, EEOGENDER_I, EEOETHNICORIGIN_I, EEOAGE_I, HANDICAPPED, VETERAN, DISABLEDVETERAN, VIETNAMVETERAN, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, OTHERVET, AFSMVET, RECSEPVET, INET1, DEX_ROW_ID FROM .AHR2AP12 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I ORDER BY APPLICANTNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP12SS_1] TO [DYNGRP]
GO

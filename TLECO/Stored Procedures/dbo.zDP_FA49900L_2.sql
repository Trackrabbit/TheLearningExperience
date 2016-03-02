SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA49900L_2] (@CMPANYID_RS smallint, @CMPANYID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, ORGSEGMENT, ACCTSEGMENT, PROJSEGMENT, CORPBOOKINDX, USERDATAAUTOFMT, REQACCOUNT, USRFLD1PROMPT, USRFIELD1FMT, USRFLD2PROMPT, USRFIELD2FMT, USRFLD3PROMPT, USRFIELD3FMT, USRFLD4PROMPT, USRFIELD4FMT, USRFLD5PROMPT, USRFIELD5FMT, USRFLD6PROMPT, USRFIELD6FMT, USRFLD7PROMPT, USRFIELD7FMT, USRFLD8PROMPT, USRFIELD8FMT, USRFLD9PROMPT, USRFIELD9FMT, USRFLD10PROMPT, USRFIELD10FMT, USRFLD11PROMPT, USRFIELD11FMT, USRFLD12PROMPT, USRFIELD12FMT, USRFLD13PROMPT, USRFIELD13FMT, USRFLD14PROMPT, USRFIELD14FMT, USRFLD15PROMPT, USRFIELD15FMT, ListValidValues_1, ListValidValues_2, ListValidValues_3, ListValidValues_4, ListValidValues_5, ListValidValues_6, ListValidValues_7, ListValidValues_8, ListValidValues_9, ListValidValues_10, ValidDate_1, ValidDate_2, ValidDate_3, ValidDate_4, Post_Table_Delete_Option, PO_System_Used, AP_Post_Option, FA_Post_From_POP, POP_Post_Option, Include_Matching_Invoice, FA_Country, Auto_Add_Book_Info, Deflt_Asset_Lbl_from_ID, Validate_Custodian, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, FA_Allow_Reporting_Ledge, FA_Reset_History_In_Deta, POSTINDETAIL, NXTASSETIDFLG, NXTASSETID, DEX_ROW_ID FROM .FA49900 ORDER BY CMPANYID DESC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, ORGSEGMENT, ACCTSEGMENT, PROJSEGMENT, CORPBOOKINDX, USERDATAAUTOFMT, REQACCOUNT, USRFLD1PROMPT, USRFIELD1FMT, USRFLD2PROMPT, USRFIELD2FMT, USRFLD3PROMPT, USRFIELD3FMT, USRFLD4PROMPT, USRFIELD4FMT, USRFLD5PROMPT, USRFIELD5FMT, USRFLD6PROMPT, USRFIELD6FMT, USRFLD7PROMPT, USRFIELD7FMT, USRFLD8PROMPT, USRFIELD8FMT, USRFLD9PROMPT, USRFIELD9FMT, USRFLD10PROMPT, USRFIELD10FMT, USRFLD11PROMPT, USRFIELD11FMT, USRFLD12PROMPT, USRFIELD12FMT, USRFLD13PROMPT, USRFIELD13FMT, USRFLD14PROMPT, USRFIELD14FMT, USRFLD15PROMPT, USRFIELD15FMT, ListValidValues_1, ListValidValues_2, ListValidValues_3, ListValidValues_4, ListValidValues_5, ListValidValues_6, ListValidValues_7, ListValidValues_8, ListValidValues_9, ListValidValues_10, ValidDate_1, ValidDate_2, ValidDate_3, ValidDate_4, Post_Table_Delete_Option, PO_System_Used, AP_Post_Option, FA_Post_From_POP, POP_Post_Option, Include_Matching_Invoice, FA_Country, Auto_Add_Book_Info, Deflt_Asset_Lbl_from_ID, Validate_Custodian, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, FA_Allow_Reporting_Ledge, FA_Reset_History_In_Deta, POSTINDETAIL, NXTASSETIDFLG, NXTASSETID, DEX_ROW_ID FROM .FA49900 WHERE CMPANYID = @CMPANYID_RS ORDER BY CMPANYID DESC END ELSE BEGIN SELECT TOP 25  CMPANYID, ORGSEGMENT, ACCTSEGMENT, PROJSEGMENT, CORPBOOKINDX, USERDATAAUTOFMT, REQACCOUNT, USRFLD1PROMPT, USRFIELD1FMT, USRFLD2PROMPT, USRFIELD2FMT, USRFLD3PROMPT, USRFIELD3FMT, USRFLD4PROMPT, USRFIELD4FMT, USRFLD5PROMPT, USRFIELD5FMT, USRFLD6PROMPT, USRFIELD6FMT, USRFLD7PROMPT, USRFIELD7FMT, USRFLD8PROMPT, USRFIELD8FMT, USRFLD9PROMPT, USRFIELD9FMT, USRFLD10PROMPT, USRFIELD10FMT, USRFLD11PROMPT, USRFIELD11FMT, USRFLD12PROMPT, USRFIELD12FMT, USRFLD13PROMPT, USRFIELD13FMT, USRFLD14PROMPT, USRFIELD14FMT, USRFLD15PROMPT, USRFIELD15FMT, ListValidValues_1, ListValidValues_2, ListValidValues_3, ListValidValues_4, ListValidValues_5, ListValidValues_6, ListValidValues_7, ListValidValues_8, ListValidValues_9, ListValidValues_10, ValidDate_1, ValidDate_2, ValidDate_3, ValidDate_4, Post_Table_Delete_Option, PO_System_Used, AP_Post_Option, FA_Post_From_POP, POP_Post_Option, Include_Matching_Invoice, FA_Country, Auto_Add_Book_Info, Deflt_Asset_Lbl_from_ID, Validate_Custodian, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, FA_Allow_Reporting_Ledge, FA_Reset_History_In_Deta, POSTINDETAIL, NXTASSETIDFLG, NXTASSETID, DEX_ROW_ID FROM .FA49900 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY CMPANYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA49900L_2] TO [DYNGRP]
GO

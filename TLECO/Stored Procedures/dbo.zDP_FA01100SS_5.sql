SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01100SS_5] (@MARKED tinyint, @LASTMNTDUSERID char(15), @FA_AP_Post_Index int) AS  set nocount on SELECT TOP 1  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE MARKED = @MARKED AND LASTMNTDUSERID = @LASTMNTDUSERID AND FA_AP_Post_Index = @FA_AP_Post_Index ORDER BY MARKED ASC, LASTMNTDUSERID ASC, FA_AP_Post_Index ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01100SS_5] TO [DYNGRP]
GO

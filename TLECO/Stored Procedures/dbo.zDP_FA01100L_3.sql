SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01100L_3] (@PORDNMBR_RS char(21), @PO_Line_RS char(7), @PORDNMBR_RE char(21), @PO_Line_RE char(7)) AS  set nocount on IF @PORDNMBR_RS IS NULL BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 ORDER BY PORDNMBR DESC, PO_Line DESC, DEX_ROW_ID DESC END ELSE IF @PORDNMBR_RS = @PORDNMBR_RE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE PORDNMBR = @PORDNMBR_RS AND PO_Line BETWEEN @PO_Line_RS AND @PO_Line_RE ORDER BY PORDNMBR DESC, PO_Line DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE PORDNMBR BETWEEN @PORDNMBR_RS AND @PORDNMBR_RE AND PO_Line BETWEEN @PO_Line_RS AND @PO_Line_RE ORDER BY PORDNMBR DESC, PO_Line DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01100L_3] TO [DYNGRP]
GO

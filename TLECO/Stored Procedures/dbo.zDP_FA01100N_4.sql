SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01100N_4] (@BS int, @ORCTRNUM char(21), @DEX_ROW_ID int, @ORCTRNUM_RS char(21), @ORCTRNUM_RE char(21)) AS  set nocount on IF @ORCTRNUM_RS IS NULL BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE ( ORCTRNUM = @ORCTRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ORCTRNUM > @ORCTRNUM ) ORDER BY ORCTRNUM ASC, DEX_ROW_ID ASC END ELSE IF @ORCTRNUM_RS = @ORCTRNUM_RE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE ORCTRNUM = @ORCTRNUM_RS AND ( ORCTRNUM = @ORCTRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ORCTRNUM > @ORCTRNUM ) ORDER BY ORCTRNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE ORCTRNUM BETWEEN @ORCTRNUM_RS AND @ORCTRNUM_RE AND ( ORCTRNUM = @ORCTRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ORCTRNUM > @ORCTRNUM ) ORDER BY ORCTRNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01100N_4] TO [DYNGRP]
GO
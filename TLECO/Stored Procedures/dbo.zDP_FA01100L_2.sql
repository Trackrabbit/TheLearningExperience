SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01100L_2] (@VENDORID_RS char(15), @ORCTRNUM_RS char(21), @VENDORID_RE char(15), @ORCTRNUM_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 ORDER BY VENDORID DESC, ORCTRNUM DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE VENDORID = @VENDORID_RS AND ORCTRNUM BETWEEN @ORCTRNUM_RS AND @ORCTRNUM_RE ORDER BY VENDORID DESC, ORCTRNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01100 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ORCTRNUM BETWEEN @ORCTRNUM_RS AND @ORCTRNUM_RE ORDER BY VENDORID DESC, ORCTRNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01100L_2] TO [DYNGRP]
GO

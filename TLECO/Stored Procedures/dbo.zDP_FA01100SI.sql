SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01100SI] (@FA_AP_Post_Index int, @MARKED tinyint, @FAPRIMARY smallint, @CNTRLTYP smallint, @APPLDAMT numeric(19,5), @ORAPPAMT numeric(19,5), @Purchased_Quantity int, @Applied_Quantity int, @ASSETID char(15), @ASSETIDSUF smallint, @SHRTNAME char(15), @ASSETDESC char(41), @EXTASSETDESC char(41), @Master_Asset_ID char(19), @STRUCTUREID char(31), @ASSETCLASSID char(15), @LOCATNID char(15), @ACQDATE datetime, @Acquisition_Cost numeric(19,5), @Orig_Acquisition_Cost numeric(19,5), @ASSETTYPE smallint, @PROPTYPE smallint, @ASSETQTY int, @ASSETBEGQTY int, @ASSETCURRMAINT numeric(19,5), @ASSETYTDMAINT numeric(19,5), @ASSETLTDMAINT numeric(19,5), @LASTMAINTDATE datetime, @ASSESSEDVALUE numeric(19,5), @VENDORID char(15), @DOCNUMBR char(21), @DOCDATE datetime, @TRXSORCE char(13), @ORCTRNUM char(21), @PORDNMBR char(21), @PO_Line char(7), @MFGRNAME char(25), @SERLNMBR char(21), @MODELNUMBER char(21), @WARRENTYDATE datetime, @CUSTODIAN char(25), @DATEADDED datetime, @DELETEDATE datetime, @Physical_Location_ID char(15), @Asset_Label char(19), @Verified_Date datetime, @PIN char(15), @CURNCYID char(15), @CURRNIDX smallint, @XCHGRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @EXGTBLID char(15), @RATETPID char(15), @RTCLCMTD smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA01100 (FA_AP_Post_Index, MARKED, FAPRIMARY, CNTRLTYP, APPLDAMT, ORAPPAMT, Purchased_Quantity, Applied_Quantity, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, Orig_Acquisition_Cost, ASSETTYPE, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, PORDNMBR, PO_Line, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @FA_AP_Post_Index, @MARKED, @FAPRIMARY, @CNTRLTYP, @APPLDAMT, @ORAPPAMT, @Purchased_Quantity, @Applied_Quantity, @ASSETID, @ASSETIDSUF, @SHRTNAME, @ASSETDESC, @EXTASSETDESC, @Master_Asset_ID, @STRUCTUREID, @ASSETCLASSID, @LOCATNID, @ACQDATE, @Acquisition_Cost, @Orig_Acquisition_Cost, @ASSETTYPE, @PROPTYPE, @ASSETQTY, @ASSETBEGQTY, @ASSETCURRMAINT, @ASSETYTDMAINT, @ASSETLTDMAINT, @LASTMAINTDATE, @ASSESSEDVALUE, @VENDORID, @DOCNUMBR, @DOCDATE, @TRXSORCE, @ORCTRNUM, @PORDNMBR, @PO_Line, @MFGRNAME, @SERLNMBR, @MODELNUMBER, @WARRENTYDATE, @CUSTODIAN, @DATEADDED, @DELETEDATE, @Physical_Location_ID, @Asset_Label, @Verified_Date, @PIN, @CURNCYID, @CURRNIDX, @XCHGRATE, @EXCHDATE, @TIME1, @EXGTBLID, @RATETPID, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01100SI] TO [DYNGRP]
GO
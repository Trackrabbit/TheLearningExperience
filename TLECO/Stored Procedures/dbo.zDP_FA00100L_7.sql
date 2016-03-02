SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00100L_7] (@ASSETSTATUS_RS smallint, @ASSETID_RS char(15), @ASSETIDSUF_RS smallint, @ASSETSTATUS_RE smallint, @ASSETID_RE char(15), @ASSETIDSUF_RE smallint) AS  set nocount on IF @ASSETSTATUS_RS IS NULL BEGIN SELECT TOP 25  ASSETINDEX, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, ASSETTYPE, ASSETSTATUS, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, NOTEINDX, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTPURCHLINESEQ, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, aaAliasID, DEX_ROW_ID FROM .FA00100 ORDER BY ASSETSTATUS DESC, ASSETID DESC, ASSETIDSUF DESC END ELSE IF @ASSETSTATUS_RS = @ASSETSTATUS_RE BEGIN SELECT TOP 25  ASSETINDEX, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, ASSETTYPE, ASSETSTATUS, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, NOTEINDX, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTPURCHLINESEQ, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, aaAliasID, DEX_ROW_ID FROM .FA00100 WHERE ASSETSTATUS = @ASSETSTATUS_RS AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE ORDER BY ASSETSTATUS DESC, ASSETID DESC, ASSETIDSUF DESC END ELSE BEGIN SELECT TOP 25  ASSETINDEX, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, ASSETTYPE, ASSETSTATUS, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, NOTEINDX, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTPURCHLINESEQ, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, aaAliasID, DEX_ROW_ID FROM .FA00100 WHERE ASSETSTATUS BETWEEN @ASSETSTATUS_RS AND @ASSETSTATUS_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE ORDER BY ASSETSTATUS DESC, ASSETID DESC, ASSETIDSUF DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00100L_7] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00100SS_6] (@STRUCTUREID char(31), @ASSETID char(15), @ASSETIDSUF smallint) AS  set nocount on SELECT TOP 1  ASSETINDEX, ASSETID, ASSETIDSUF, SHRTNAME, ASSETDESC, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ACQDATE, Acquisition_Cost, ASSETTYPE, ASSETSTATUS, PROPTYPE, ASSETQTY, ASSETBEGQTY, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, NOTEINDX, DATEADDED, DELETEDATE, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTPURCHLINESEQ, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, aaAliasID, DEX_ROW_ID FROM .FA00100 WHERE STRUCTUREID = @STRUCTUREID AND ASSETID = @ASSETID AND ASSETIDSUF = @ASSETIDSUF ORDER BY STRUCTUREID ASC, ASSETID ASC, ASSETIDSUF ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00100SS_6] TO [DYNGRP]
GO

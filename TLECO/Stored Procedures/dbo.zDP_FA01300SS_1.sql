SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01300SS_1] (@POPRCTNM char(17), @RCPTLNNM int) AS  set nocount on SELECT TOP 1  POPRCTNM, RCPTLNNM, ASSETID, ASSETIDSUF, SHRTNAME, EXTASSETDESC, Master_Asset_ID, STRUCTUREID, ASSETCLASSID, LOCATNID, ASSETTYPE, PROPTYPE, Create_Multiple_Fixed_As, ASSETCURRMAINT, ASSETYTDMAINT, ASSETLTDMAINT, LASTMAINTDATE, ASSESSEDVALUE, MFGRNAME, SERLNMBR, MODELNUMBER, WARRENTYDATE, CUSTODIAN, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01300 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM ORDER BY POPRCTNM ASC, RCPTLNNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01300SS_1] TO [DYNGRP]
GO

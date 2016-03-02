SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201SS_2] (@aaAccountClass char(15)) AS  set nocount on SELECT TOP 1  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAccountClass = @aaAccountClass ORDER BY aaAccountClass ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201SS_2] TO [DYNGRP]
GO

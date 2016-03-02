SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201SS_1] (@aaAcctClassID int) AS  set nocount on SELECT TOP 1  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassID = @aaAcctClassID ORDER BY aaAcctClassID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201SS_1] TO [DYNGRP]
GO

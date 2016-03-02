SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201SS_3] (@aaAcctClassDescr char(51)) AS  set nocount on SELECT TOP 1  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassDescr = @aaAcctClassDescr ORDER BY aaAcctClassDescr ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201SS_3] TO [DYNGRP]
GO

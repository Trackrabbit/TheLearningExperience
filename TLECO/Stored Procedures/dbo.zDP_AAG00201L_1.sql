SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201L_1] (@aaAcctClassID_RS int, @aaAcctClassID_RE int) AS  set nocount on IF @aaAcctClassID_RS IS NULL BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 ORDER BY aaAcctClassID DESC END ELSE IF @aaAcctClassID_RS = @aaAcctClassID_RE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassID = @aaAcctClassID_RS ORDER BY aaAcctClassID DESC END ELSE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassID BETWEEN @aaAcctClassID_RS AND @aaAcctClassID_RE ORDER BY aaAcctClassID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201L_1] TO [DYNGRP]
GO

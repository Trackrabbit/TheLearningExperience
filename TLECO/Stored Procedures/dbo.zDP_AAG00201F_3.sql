SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201F_3] (@aaAcctClassDescr_RS char(51), @aaAcctClassDescr_RE char(51)) AS  set nocount on IF @aaAcctClassDescr_RS IS NULL BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 ORDER BY aaAcctClassDescr ASC, DEX_ROW_ID ASC END ELSE IF @aaAcctClassDescr_RS = @aaAcctClassDescr_RE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassDescr = @aaAcctClassDescr_RS ORDER BY aaAcctClassDescr ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAcctClassDescr BETWEEN @aaAcctClassDescr_RS AND @aaAcctClassDescr_RE ORDER BY aaAcctClassDescr ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201F_3] TO [DYNGRP]
GO

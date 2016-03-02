SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201N_2] (@BS int, @aaAccountClass char(15), @aaAccountClass_RS char(15), @aaAccountClass_RE char(15)) AS  set nocount on IF @aaAccountClass_RS IS NULL BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE ( aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC END ELSE IF @aaAccountClass_RS = @aaAccountClass_RE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAccountClass = @aaAccountClass_RS AND ( aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC END ELSE BEGIN SELECT TOP 25  aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX, DEX_ROW_ID FROM .AAG00201 WHERE aaAccountClass BETWEEN @aaAccountClass_RS AND @aaAccountClass_RE AND ( aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201N_2] TO [DYNGRP]
GO

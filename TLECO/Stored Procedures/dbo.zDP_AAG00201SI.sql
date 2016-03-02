SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00201SI] (@aaAcctClassID int, @aaAccountClass char(15), @aaAcctClassDescr char(51), @aaAcctClassDescr2 char(51), @aaSetCustID tinyint, @aaSetVendID tinyint, @aaSetItemID tinyint, @aaSetSiteID tinyint, @aaSetEmployeeID tinyint, @aaSetAssetID tinyint, @aaSetBookID tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00201 (aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaAcctClassDescr2, aaSetCustID, aaSetVendID, aaSetItemID, aaSetSiteID, aaSetEmployeeID, aaSetAssetID, aaSetBookID, NOTEINDX) VALUES ( @aaAcctClassID, @aaAccountClass, @aaAcctClassDescr, @aaAcctClassDescr2, @aaSetCustID, @aaSetVendID, @aaSetItemID, @aaSetSiteID, @aaSetEmployeeID, @aaSetAssetID, @aaSetBookID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00201SI] TO [DYNGRP]
GO

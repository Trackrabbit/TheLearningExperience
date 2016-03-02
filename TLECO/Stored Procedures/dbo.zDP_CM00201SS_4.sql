SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00201SS_4] (@StoreNumber char(65)) AS  set nocount on SELECT TOP 1  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE StoreNumber = @StoreNumber ORDER BY StoreNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00201SS_4] TO [DYNGRP]
GO

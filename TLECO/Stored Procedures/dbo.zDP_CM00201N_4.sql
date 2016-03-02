SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00201N_4] (@BS int, @StoreNumber char(65), @StoreNumber_RS char(65), @StoreNumber_RE char(65)) AS  set nocount on IF @StoreNumber_RS IS NULL BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE ( StoreNumber > @StoreNumber ) ORDER BY StoreNumber ASC END ELSE IF @StoreNumber_RS = @StoreNumber_RE BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE StoreNumber = @StoreNumber_RS AND ( StoreNumber > @StoreNumber ) ORDER BY StoreNumber ASC END ELSE BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE StoreNumber BETWEEN @StoreNumber_RS AND @StoreNumber_RE AND ( StoreNumber > @StoreNumber ) ORDER BY StoreNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00201N_4] TO [DYNGRP]
GO

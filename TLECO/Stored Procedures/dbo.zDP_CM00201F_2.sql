SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00201F_2] (@MerchantID_RS char(17), @StoreNumber_RS char(65), @MerchantID_RE char(17), @StoreNumber_RE char(65)) AS  set nocount on IF @MerchantID_RS IS NULL BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 ORDER BY MerchantID ASC, StoreNumber ASC END ELSE IF @MerchantID_RS = @MerchantID_RE BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE MerchantID = @MerchantID_RS AND StoreNumber BETWEEN @StoreNumber_RS AND @StoreNumber_RE ORDER BY MerchantID ASC, StoreNumber ASC END ELSE BEGIN SELECT TOP 25  MerchantID, StoreNumber, CHEKBKID, EFTUserID, DEX_ROW_ID FROM .CM00201 WHERE MerchantID BETWEEN @MerchantID_RS AND @MerchantID_RE AND StoreNumber BETWEEN @StoreNumber_RS AND @StoreNumber_RE ORDER BY MerchantID ASC, StoreNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00201F_2] TO [DYNGRP]
GO

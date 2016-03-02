SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40005F_1] (@Cash_Account_Index_RS int, @Cash_Account_Index_RE int) AS  set nocount on IF @Cash_Account_Index_RS IS NULL BEGIN SELECT TOP 25  Cash_Account_Index, DEX_ROW_ID FROM .CAM40005 ORDER BY Cash_Account_Index ASC END ELSE IF @Cash_Account_Index_RS = @Cash_Account_Index_RE BEGIN SELECT TOP 25  Cash_Account_Index, DEX_ROW_ID FROM .CAM40005 WHERE Cash_Account_Index = @Cash_Account_Index_RS ORDER BY Cash_Account_Index ASC END ELSE BEGIN SELECT TOP 25  Cash_Account_Index, DEX_ROW_ID FROM .CAM40005 WHERE Cash_Account_Index BETWEEN @Cash_Account_Index_RS AND @Cash_Account_Index_RE ORDER BY Cash_Account_Index ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40005F_1] TO [DYNGRP]
GO

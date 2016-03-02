SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40005SS_1] (@Cash_Account_Index int) AS  set nocount on SELECT TOP 1  Cash_Account_Index, DEX_ROW_ID FROM .CAM40005 WHERE Cash_Account_Index = @Cash_Account_Index ORDER BY Cash_Account_Index ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40005SS_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40005SI] (@Cash_Account_Index int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CAM40005 (Cash_Account_Index) VALUES ( @Cash_Account_Index) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40005SI] TO [DYNGRP]
GO

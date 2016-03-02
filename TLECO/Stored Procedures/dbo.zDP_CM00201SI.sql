SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00201SI] (@MerchantID char(17), @StoreNumber char(65), @CHEKBKID char(15), @EFTUserID char(33), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM00201 (MerchantID, StoreNumber, CHEKBKID, EFTUserID) VALUES ( @MerchantID, @StoreNumber, @CHEKBKID, @EFTUserID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00201SI] TO [DYNGRP]
GO

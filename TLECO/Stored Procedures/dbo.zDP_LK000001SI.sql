SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000001SI] (@KEYNUMBR smallint, @LK_Zero_Balance tinyint, @LK_Archive_Date datetime, @LK_Single_Account tinyint, @LK_Allow_Delete tinyint, @LK_Password char(11), @LK_Next_Link_No int, @LK_ReUseLinks tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .LK000001 (KEYNUMBR, LK_Zero_Balance, LK_Archive_Date, LK_Single_Account, LK_Allow_Delete, LK_Password, LK_Next_Link_No, LK_ReUseLinks) VALUES ( @KEYNUMBR, @LK_Zero_Balance, @LK_Archive_Date, @LK_Single_Account, @LK_Allow_Delete, @LK_Password, @LK_Next_Link_No, @LK_ReUseLinks) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000001SI] TO [DYNGRP]
GO

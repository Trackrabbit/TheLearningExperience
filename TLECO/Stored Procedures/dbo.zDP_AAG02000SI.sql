SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02000SI] (@USERID char(15), @aaTrxDimID int, @aaTrxDimCodeID int, @aaView tinyint, @aaEdit tinyint, @aaDistribute tinyint, @aaAdjust tinyint, @aaBudgetView tinyint, @aaBudgetAssign tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG02000 (USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign) VALUES ( @USERID, @aaTrxDimID, @aaTrxDimCodeID, @aaView, @aaEdit, @aaDistribute, @aaAdjust, @aaBudgetView, @aaBudgetAssign) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02000SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00901SI] (@aaBudgetTreeID int, @aaTrxDimID int, @aaOrder int, @aaSelectOpt smallint, @aaTrxDimCodeFr char(31), @aaTrxDimCodeTo char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00901 (aaBudgetTreeID, aaTrxDimID, aaOrder, aaSelectOpt, aaTrxDimCodeFr, aaTrxDimCodeTo) VALUES ( @aaBudgetTreeID, @aaTrxDimID, @aaOrder, @aaSelectOpt, @aaTrxDimCodeFr, @aaTrxDimCodeTo) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00901SI] TO [DYNGRP]
GO

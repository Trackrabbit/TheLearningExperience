SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273516SI] (@MSO_EngineGUID char(51), @MSO_CardName char(31), @MSO_CheckbookID char(51), @MSO_Number_Days_Of_Book_ smallint, @MSO_ExpiredBook_Batch_Na char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273516 (MSO_EngineGUID, MSO_CardName, MSO_CheckbookID, MSO_Number_Days_Of_Book_, MSO_ExpiredBook_Batch_Na) VALUES ( @MSO_EngineGUID, @MSO_CardName, @MSO_CheckbookID, @MSO_Number_Days_Of_Book_, @MSO_ExpiredBook_Batch_Na) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273516SI] TO [DYNGRP]
GO

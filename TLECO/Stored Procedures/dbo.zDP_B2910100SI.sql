SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910100SI] (@SCHEDULE_NUMBER char(21), @DOCNUMBR char(21), @DOCTYPE smallint, @BSSI_Late_Fee_Amount numeric(19,5), @DOCAMNT numeric(19,5), @Schedule_Payment_Number smallint, @DOCDATE datetime, @Status smallint, @VOIDSTTS smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2910100 (SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS) VALUES ( @SCHEDULE_NUMBER, @DOCNUMBR, @DOCTYPE, @BSSI_Late_Fee_Amount, @DOCAMNT, @Schedule_Payment_Number, @DOCDATE, @Status, @VOIDSTTS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910100SI] TO [DYNGRP]
GO

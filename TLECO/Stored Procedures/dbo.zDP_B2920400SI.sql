SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920400SI] (@SCHEDULE_NUMBER char(21), @BS29_Payment_Frequency smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920400 (SCHEDULE_NUMBER, BS29_Payment_Frequency) VALUES ( @SCHEDULE_NUMBER, @BS29_Payment_Frequency) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920400SI] TO [DYNGRP]
GO
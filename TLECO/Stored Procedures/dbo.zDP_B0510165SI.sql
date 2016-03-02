SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510165SI] (@YEAR1 smallint, @MJW_Last_Day_Period datetime, @BSSI_Num_Periods_Yearly smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510165 (YEAR1, MJW_Last_Day_Period, BSSI_Num_Periods_Yearly) VALUES ( @YEAR1, @MJW_Last_Day_Period, @BSSI_Num_Periods_Yearly) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510165SI] TO [DYNGRP]
GO

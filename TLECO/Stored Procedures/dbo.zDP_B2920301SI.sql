SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920301SI] (@RMDTYPAL smallint, @DOCNUMBR char(21), @BS29_Leasing_Schedule tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920301 (RMDTYPAL, DOCNUMBR, BS29_Leasing_Schedule) VALUES ( @RMDTYPAL, @DOCNUMBR, @BS29_Leasing_Schedule) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920301SI] TO [DYNGRP]
GO
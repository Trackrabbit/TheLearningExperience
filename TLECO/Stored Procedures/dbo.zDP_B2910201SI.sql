SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910201SI] (@DOCNUMBR char(21), @RMDTYPAL smallint, @BS29_Create_Schedule_Dis tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2910201 (DOCNUMBR, RMDTYPAL, BS29_Create_Schedule_Dis) VALUES ( @DOCNUMBR, @RMDTYPAL, @BS29_Create_Schedule_Dis) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910201SI] TO [DYNGRP]
GO

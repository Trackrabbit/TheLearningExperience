SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01400SI] (@DOCNUMBR char(21), @Extender_Record_ID int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT01400 (DOCNUMBR, Extender_Record_ID) VALUES ( @DOCNUMBR, @Extender_Record_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01400SI] TO [DYNGRP]
GO

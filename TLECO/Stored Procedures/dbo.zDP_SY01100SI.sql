SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01100SI] (@SERIES smallint, @SEQNUMBR int, @ACTINDX int, @PTGACDSC char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01100 (SERIES, SEQNUMBR, ACTINDX, PTGACDSC) VALUES ( @SERIES, @SEQNUMBR, @ACTINDX, @PTGACDSC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01100SI] TO [DYNGRP]
GO

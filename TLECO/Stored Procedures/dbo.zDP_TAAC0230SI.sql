SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAAC0230SI] (@ACCRUAL_I char(7), @TIMECODE_I char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TAAC0230 (ACCRUAL_I, TIMECODE_I) VALUES ( @ACCRUAL_I, @TIMECODE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAAC0230SI] TO [DYNGRP]
GO

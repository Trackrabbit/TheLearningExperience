SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2IMP01SS_1] (@SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  SEQORDER_I, STRING255_I, DEX_ROW_ID FROM .HR2IMP01 WHERE SEQORDER_I = @SEQORDER_I ORDER BY SEQORDER_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2IMP01SS_1] TO [DYNGRP]
GO

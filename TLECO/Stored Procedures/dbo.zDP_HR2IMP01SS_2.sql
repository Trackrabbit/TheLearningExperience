SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2IMP01SS_2] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  SEQORDER_I, STRING255_I, DEX_ROW_ID FROM .HR2IMP01 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2IMP01SS_2] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00311SI] (@aaMLQueryID int, @aaColumn smallint, @aaOrder int, @aaTotals tinyint, @aaPageBreak tinyint, @aaUDFSelect tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00311 (aaMLQueryID, aaColumn, aaOrder, aaTotals, aaPageBreak, aaUDFSelect) VALUES ( @aaMLQueryID, @aaColumn, @aaOrder, @aaTotals, @aaPageBreak, @aaUDFSelect) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00311SI] TO [DYNGRP]
GO

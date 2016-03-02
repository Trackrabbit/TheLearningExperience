SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41800SS_1] (@MAXDEDUCTION char(15)) AS  set nocount on SELECT TOP 1  MAXDEDUCTION, DSCRIPTN, STATEFED, MAXMETHOD, MAXPERCENT, MAXEXEMPTAMT, MINWAGEAMT, EARNINGSCODE, INCLUDEPREVSEQDED, NOTEINDX, DEX_ROW_ID FROM .UPR41800 WHERE MAXDEDUCTION = @MAXDEDUCTION ORDER BY MAXDEDUCTION ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41800SS_1] TO [DYNGRP]
GO

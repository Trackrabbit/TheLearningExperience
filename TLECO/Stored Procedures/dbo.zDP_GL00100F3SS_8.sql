SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F3SS_8] (@RELID int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F3 WHERE RELID = @RELID ORDER BY RELID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F3SS_8] TO [DYNGRP]
GO

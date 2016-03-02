SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F2SS_4] (@ACCTTYPE smallint, @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @RELID int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ACCTTYPE = @ACCTTYPE AND ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND RELID = @RELID ORDER BY ACCTTYPE ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, RELID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F2SS_4] TO [DYNGRP]
GO

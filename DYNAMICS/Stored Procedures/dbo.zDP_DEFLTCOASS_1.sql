SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DEFLTCOASS_1] (@INDUSTYP smallint, @DEFCHRAC_1 char(9), @DEFCHRAC_2 char(9), @DEFCHRAC_3 char(9), @DEFCHRAC_4 char(9), @DEFCHRAC_5 char(9)) AS  set nocount on SELECT TOP 1  BUSNESS1, BUSNESS2, BUSNESS3, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, SERIES, SEQNUMBR, DEX_ROW_ID FROM .DEFLTCOA WHERE INDUSTYP = @INDUSTYP AND DEFCHRAC_1 = @DEFCHRAC_1 AND DEFCHRAC_2 = @DEFCHRAC_2 AND DEFCHRAC_3 = @DEFCHRAC_3 AND DEFCHRAC_4 = @DEFCHRAC_4 AND DEFCHRAC_5 = @DEFCHRAC_5 ORDER BY INDUSTYP ASC, DEFCHRAC_1 ASC, DEFCHRAC_2 ASC, DEFCHRAC_3 ASC, DEFCHRAC_4 ASC, DEFCHRAC_5 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DEFLTCOASS_1] TO [DYNGRP]
GO

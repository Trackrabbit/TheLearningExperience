SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920406SS_1] (@COMPTRNM int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  COMPTRNM, BACHNUMB, EMPLOYID, UPRTRXCD, CHRGAMNT, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, DEX_ROW_ID FROM .B2920406 WHERE COMPTRNM = @COMPTRNM ORDER BY COMPTRNM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920406SS_1] TO [DYNGRP]
GO

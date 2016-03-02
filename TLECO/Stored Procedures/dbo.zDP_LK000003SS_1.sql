SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK000003SS_1] (@LK_Link_No int, @LineNumber smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ORTRXAMT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000003 WHERE LK_Link_No = @LK_Link_No AND LineNumber = @LineNumber ORDER BY LK_Link_No ASC, LineNumber ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000003SS_1] TO [DYNGRP]
GO

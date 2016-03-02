SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK000103N_1] (@BS int, @LK_Link_No int, @LineNumber smallint, @LK_Link_No_RS int, @LineNumber_RS smallint, @LK_Link_No_RE int, @LineNumber_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @LK_Link_No_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 WHERE ( LK_Link_No = @LK_Link_No AND LineNumber > @LineNumber OR LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC, LineNumber ASC END ELSE IF @LK_Link_No_RS = @LK_Link_No_RE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 WHERE LK_Link_No = @LK_Link_No_RS AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE AND ( LK_Link_No = @LK_Link_No AND LineNumber > @LineNumber OR LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC, LineNumber ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 WHERE LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE AND ( LK_Link_No = @LK_Link_No AND LineNumber > @LineNumber OR LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC, LineNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000103N_1] TO [DYNGRP]
GO

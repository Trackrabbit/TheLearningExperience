SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK000003SS_2] (@ACTINDX int, @JRNENTRY int, @RCTRXSEQ numeric(19,5), @SEQNUMBR int, @OPENYEAR smallint, @CURRNIDX smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ORTRXAMT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000003 WHERE ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX = @CURRNIDX ORDER BY ACTINDX ASC, JRNENTRY ASC, RCTRXSEQ ASC, SEQNUMBR ASC, OPENYEAR ASC, CURRNIDX ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000003SS_2] TO [DYNGRP]
GO

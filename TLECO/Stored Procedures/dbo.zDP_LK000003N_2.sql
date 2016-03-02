SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK000003N_2] (@BS int, @ACTINDX int, @JRNENTRY int, @RCTRXSEQ numeric(19,5), @SEQNUMBR int, @OPENYEAR smallint, @CURRNIDX smallint, @DEX_ROW_ID int, @ACTINDX_RS int, @JRNENTRY_RS int, @RCTRXSEQ_RS numeric(19,5), @SEQNUMBR_RS int, @OPENYEAR_RS smallint, @CURRNIDX_RS smallint, @ACTINDX_RE int, @JRNENTRY_RE int, @RCTRXSEQ_RE numeric(19,5), @SEQNUMBR_RE int, @OPENYEAR_RE smallint, @CURRNIDX_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ORTRXAMT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000003 WHERE ( ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX = @CURRNIDX AND DEX_ROW_ID > @DEX_ROW_ID OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX > @CURRNIDX OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR > @OPENYEAR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ > @RCTRXSEQ OR ACTINDX = @ACTINDX AND JRNENTRY > @JRNENTRY OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, JRNENTRY ASC, RCTRXSEQ ASC, SEQNUMBR ASC, OPENYEAR ASC, CURRNIDX ASC, DEX_ROW_ID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ORTRXAMT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000003 WHERE ACTINDX = @ACTINDX_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND ( ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX = @CURRNIDX AND DEX_ROW_ID > @DEX_ROW_ID OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX > @CURRNIDX OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR > @OPENYEAR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ > @RCTRXSEQ OR ACTINDX = @ACTINDX AND JRNENTRY > @JRNENTRY OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, JRNENTRY ASC, RCTRXSEQ ASC, SEQNUMBR ASC, OPENYEAR ASC, CURRNIDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ORTRXAMT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000003 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND ( ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX = @CURRNIDX AND DEX_ROW_ID > @DEX_ROW_ID OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR = @OPENYEAR AND CURRNIDX > @CURRNIDX OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR = @SEQNUMBR AND OPENYEAR > @OPENYEAR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND JRNENTRY = @JRNENTRY AND RCTRXSEQ > @RCTRXSEQ OR ACTINDX = @ACTINDX AND JRNENTRY > @JRNENTRY OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, JRNENTRY ASC, RCTRXSEQ ASC, SEQNUMBR ASC, OPENYEAR ASC, CURRNIDX ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000003N_2] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00500N_3] (@BS int, @PRODTCOD char(1), @PRCSHID char(15), @PSSEQNUM int, @PRODTCOD_RS char(1), @PRCSHID_RS char(15), @PSSEQNUM_RS int, @PRODTCOD_RE char(1), @PRCSHID_RE char(15), @PSSEQNUM_RE int) AS  set nocount on IF @PRODTCOD_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE ( PRODTCOD = @PRODTCOD AND PRCSHID = @PRCSHID AND PSSEQNUM > @PSSEQNUM OR PRODTCOD = @PRODTCOD AND PRCSHID > @PRCSHID OR PRODTCOD > @PRODTCOD ) ORDER BY PRODTCOD ASC, PRCSHID ASC, PSSEQNUM ASC END ELSE IF @PRODTCOD_RS = @PRODTCOD_RE BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE PRODTCOD = @PRODTCOD_RS AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND PSSEQNUM BETWEEN @PSSEQNUM_RS AND @PSSEQNUM_RE AND ( PRODTCOD = @PRODTCOD AND PRCSHID = @PRCSHID AND PSSEQNUM > @PSSEQNUM OR PRODTCOD = @PRODTCOD AND PRCSHID > @PRCSHID OR PRODTCOD > @PRODTCOD ) ORDER BY PRODTCOD ASC, PRCSHID ASC, PSSEQNUM ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND PSSEQNUM BETWEEN @PSSEQNUM_RS AND @PSSEQNUM_RE AND ( PRODTCOD = @PRODTCOD AND PRCSHID = @PRCSHID AND PSSEQNUM > @PSSEQNUM OR PRODTCOD = @PRODTCOD AND PRCSHID > @PRCSHID OR PRODTCOD > @PRODTCOD ) ORDER BY PRODTCOD ASC, PRCSHID ASC, PSSEQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00500N_3] TO [DYNGRP]
GO

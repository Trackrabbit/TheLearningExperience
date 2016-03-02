SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00712UN_2] (@BS int, @ORDDOCID char(15), @LNITMSEQ int, @POSTED tinyint, @SEQNUMBR int, @ORDDOCID_RS char(15), @LNITMSEQ_RS int, @POSTED_RS tinyint, @SEQNUMBR_RS int, @ORDDOCID_RE char(15), @LNITMSEQ_RE int, @POSTED_RE tinyint, @SEQNUMBR_RE int) AS  set nocount on IF @ORDDOCID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, ITEMNMBR, TRNSFLOC, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC00712 WHERE ( ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @ORDDOCID_RS = @ORDDOCID_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, ITEMNMBR, TRNSFLOC, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC00712 WHERE ORDDOCID = @ORDDOCID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, ITEMNMBR, TRNSFLOC, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC00712 WHERE ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00712UN_2] TO [DYNGRP]
GO

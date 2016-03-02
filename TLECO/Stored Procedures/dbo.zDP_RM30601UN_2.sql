SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30601UN_2] (@BS int, @RMDTYPAL smallint, @DOCNUMBR char(21), @SEQNUMBR int, @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @SEQNUMBR_RS int, @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TRXSORCE, TAXDTLID, ACTINDX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM30601 WHERE ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TRXSORCE, TAXDTLID, ACTINDX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM30601 WHERE RMDTYPAL = @RMDTYPAL_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TRXSORCE, TAXDTLID, ACTINDX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM30601 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30601UN_2] TO [DYNGRP]
GO

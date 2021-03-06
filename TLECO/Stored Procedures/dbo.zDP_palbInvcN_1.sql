SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbInvcN_1] (@BS int, @DOCNUMBR char(21), @SEQNUMBR int, @DOCNUMBR_RS char(21), @SEQNUMBR_RS int, @DOCNUMBR_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, SEQNUMBR, APTODCTY, APTODCNM, APPTOAMT, CUSTNMBR, CUSTNAME, DEX_ROW_ID FROM .palbInvc WHERE ( DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, SEQNUMBR ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, SEQNUMBR, APTODCTY, APTODCNM, APPTOAMT, CUSTNMBR, CUSTNAME, DEX_ROW_ID FROM .palbInvc WHERE DOCNUMBR = @DOCNUMBR_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, SEQNUMBR, APTODCTY, APTODCNM, APPTOAMT, CUSTNMBR, CUSTNAME, DEX_ROW_ID FROM .palbInvc WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( DOCNUMBR = @DOCNUMBR AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbInvcN_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10003N_1] (@BS int, @IVDOCTYP smallint, @IVDOCNBR char(17), @LNSEQNBR numeric(19,5), @SEQNUMBR int, @IVDOCTYP_RS smallint, @IVDOCNBR_RS char(17), @LNSEQNBR_RS numeric(19,5), @SEQNUMBR_RS int, @IVDOCTYP_RE smallint, @IVDOCNBR_RE char(17), @LNSEQNBR_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @IVDOCTYP_RS IS NULL BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, QTYSCRAPPED, DEX_ROW_ID FROM .IV10003 WHERE ( IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR > @LNSEQNBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR > @IVDOCNBR OR IVDOCTYP > @IVDOCTYP ) ORDER BY IVDOCTYP ASC, IVDOCNBR ASC, LNSEQNBR ASC, SEQNUMBR ASC END ELSE IF @IVDOCTYP_RS = @IVDOCTYP_RE BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, QTYSCRAPPED, DEX_ROW_ID FROM .IV10003 WHERE IVDOCTYP = @IVDOCTYP_RS AND IVDOCNBR BETWEEN @IVDOCNBR_RS AND @IVDOCNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR > @LNSEQNBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR > @IVDOCNBR OR IVDOCTYP > @IVDOCTYP ) ORDER BY IVDOCTYP ASC, IVDOCNBR ASC, LNSEQNBR ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, QTYSCRAPPED, DEX_ROW_ID FROM .IV10003 WHERE IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND IVDOCNBR BETWEEN @IVDOCNBR_RS AND @IVDOCNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR > @LNSEQNBR OR IVDOCTYP = @IVDOCTYP AND IVDOCNBR > @IVDOCNBR OR IVDOCTYP > @IVDOCTYP ) ORDER BY IVDOCTYP ASC, IVDOCNBR ASC, LNSEQNBR ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10003N_1] TO [DYNGRP]
GO

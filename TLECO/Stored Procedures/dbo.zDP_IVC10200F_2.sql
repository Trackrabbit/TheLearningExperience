SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10200F_2] (@RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, PYMTTYPE, RMDTYPAL, DOCNUMBR, CURNCYID, CHEKBKID, CARDNAME, RCTNCCRD, CHEKNMBR, AMNTPAID, DOCDATE, EXPNDATE, AUTHCODE, TRXSORCE, EFTFLAG, DEX_ROW_ID FROM .IVC10200 ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, PYMTTYPE, RMDTYPAL, DOCNUMBR, CURNCYID, CHEKBKID, CARDNAME, RCTNCCRD, CHEKNMBR, AMNTPAID, DOCDATE, EXPNDATE, AUTHCODE, TRXSORCE, EFTFLAG, DEX_ROW_ID FROM .IVC10200 WHERE RMDTYPAL = @RMDTYPAL_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, PYMTTYPE, RMDTYPAL, DOCNUMBR, CURNCYID, CHEKBKID, CARDNAME, RCTNCCRD, CHEKNMBR, AMNTPAID, DOCDATE, EXPNDATE, AUTHCODE, TRXSORCE, EFTFLAG, DEX_ROW_ID FROM .IVC10200 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10200F_2] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10103UN_2] (@BS int, @DOCNUMBR char(21), @RMDTYPAL smallint, @DOCNUMBR_RS char(21), @RMDTYPAL_RS smallint, @DOCNUMBR_RE char(21), @RMDTYPAL_RE smallint) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, PYMTTYPE, DOCNUMBR, RMDTYPAL, CHEKBKID, CHEKNMBR, CARDNAME, RCTNCCRD, AUTHCODE, AMNTPAID, OAMTPAID, AMNTREMA, OAMNTREM, DOCDATE, EXPNDATE, CURNCYID, CURRNIDX, TRXSORCE, DEPSTATS, DELETE1, GLPOSTDT, CASHINDEX, DEPINDEX, EFTFLAG, DEX_ROW_ID FROM .SOP10103 WHERE ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DEX_ROW_ID ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, PYMTTYPE, DOCNUMBR, RMDTYPAL, CHEKBKID, CHEKNMBR, CARDNAME, RCTNCCRD, AUTHCODE, AMNTPAID, OAMTPAID, AMNTREMA, OAMNTREM, DOCDATE, EXPNDATE, CURNCYID, CURRNIDX, TRXSORCE, DEPSTATS, DELETE1, GLPOSTDT, CASHINDEX, DEPINDEX, EFTFLAG, DEX_ROW_ID FROM .SOP10103 WHERE DOCNUMBR = @DOCNUMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, PYMTTYPE, DOCNUMBR, RMDTYPAL, CHEKBKID, CHEKNMBR, CARDNAME, RCTNCCRD, AUTHCODE, AMNTPAID, OAMTPAID, AMNTREMA, OAMNTREM, DOCDATE, EXPNDATE, CURNCYID, CURRNIDX, TRXSORCE, DEPSTATS, DELETE1, GLPOSTDT, CASHINDEX, DEPINDEX, EFTFLAG, DEX_ROW_ID FROM .SOP10103 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10103UN_2] TO [DYNGRP]
GO
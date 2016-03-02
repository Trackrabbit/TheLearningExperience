SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30501UN_3] (@BS int, @SLPRSNID char(15), @RMDTYPAL smallint, @DOCNUMBR char(21), @SALSTERR char(15), @SLPRSNID_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @SALSTERR_RS char(15), @SLPRSNID_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21), @SALSTERR_RE char(15)) AS  set nocount on IF @SLPRSNID_RS IS NULL BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 WHERE ( SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SALSTERR > @SALSTERR OR SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR SLPRSNID = @SLPRSNID AND RMDTYPAL > @RMDTYPAL OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, RMDTYPAL ASC, DOCNUMBR ASC, SALSTERR ASC, DEX_ROW_ID ASC END ELSE IF @SLPRSNID_RS = @SLPRSNID_RE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 WHERE SLPRSNID = @SLPRSNID_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND ( SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SALSTERR > @SALSTERR OR SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR SLPRSNID = @SLPRSNID AND RMDTYPAL > @RMDTYPAL OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, RMDTYPAL ASC, DOCNUMBR ASC, SALSTERR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 WHERE SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND ( SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SALSTERR > @SALSTERR OR SLPRSNID = @SLPRSNID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR SLPRSNID = @SLPRSNID AND RMDTYPAL > @RMDTYPAL OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, RMDTYPAL ASC, DOCNUMBR ASC, SALSTERR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30501UN_3] TO [DYNGRP]
GO

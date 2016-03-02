SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30501L_5] (@COMTRSRC_RS char(13), @SLPRSNID_RS char(15), @COMTRSRC_RE char(13), @SLPRSNID_RE char(15)) AS  set nocount on IF @COMTRSRC_RS IS NULL BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 ORDER BY COMTRSRC DESC, SLPRSNID DESC, DEX_ROW_ID DESC END ELSE IF @COMTRSRC_RS = @COMTRSRC_RE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 WHERE COMTRSRC = @COMTRSRC_RS AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE ORDER BY COMTRSRC DESC, SLPRSNID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORSLSAMT, ORNCMAMT, CURRNIDX, DEX_ROW_ID FROM .RM30501 WHERE COMTRSRC BETWEEN @COMTRSRC_RS AND @COMTRSRC_RE AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE ORDER BY COMTRSRC DESC, SLPRSNID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30501L_5] TO [DYNGRP]
GO

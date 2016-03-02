SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10504F_2] (@COMTRSRC_RS char(13), @COMTRSRC_RE char(13)) AS  set nocount on IF @COMTRSRC_RS IS NULL BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SALSTERR, SLPRSNID, CUSTNMBR, COMDLRAM, NCOMAMNT, COMPRCNT, PRCTOSAL, SLSAMNT, COMTRSRC, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10504 ORDER BY COMTRSRC ASC, DEX_ROW_ID ASC END ELSE IF @COMTRSRC_RS = @COMTRSRC_RE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SALSTERR, SLPRSNID, CUSTNMBR, COMDLRAM, NCOMAMNT, COMPRCNT, PRCTOSAL, SLSAMNT, COMTRSRC, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10504 WHERE COMTRSRC = @COMTRSRC_RS ORDER BY COMTRSRC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SALSTERR, SLPRSNID, CUSTNMBR, COMDLRAM, NCOMAMNT, COMPRCNT, PRCTOSAL, SLSAMNT, COMTRSRC, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10504 WHERE COMTRSRC BETWEEN @COMTRSRC_RS AND @COMTRSRC_RE ORDER BY COMTRSRC ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10504F_2] TO [DYNGRP]
GO

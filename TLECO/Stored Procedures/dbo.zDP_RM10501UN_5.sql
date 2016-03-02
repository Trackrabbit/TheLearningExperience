SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10501UN_5] (@BS int, @COMTRSRC char(13), @SLPRSNID char(15), @COMTRSRC_RS char(13), @SLPRSNID_RS char(15), @COMTRSRC_RE char(13), @SLPRSNID_RE char(15)) AS  set nocount on IF @COMTRSRC_RS IS NULL BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10501 WHERE ( COMTRSRC = @COMTRSRC AND SLPRSNID > @SLPRSNID OR COMTRSRC > @COMTRSRC ) ORDER BY COMTRSRC ASC, SLPRSNID ASC, DEX_ROW_ID ASC END ELSE IF @COMTRSRC_RS = @COMTRSRC_RE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10501 WHERE COMTRSRC = @COMTRSRC_RS AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE AND ( COMTRSRC = @COMTRSRC AND SLPRSNID > @SLPRSNID OR COMTRSRC > @COMTRSRC ) ORDER BY COMTRSRC ASC, SLPRSNID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  NCOMAMNT, RMDTYPAL, COMPRCNT, DOCNUMBR, SEQNUMBR, TRXSORCE, COMTRSRC, CUSTNMBR, SLPRSNID, SALSTERR, COMMCODE, PRCTOSAL, SLSAMNT, COMDLRAM, POSTED, COMMPAID, COMMDEST, ORCOMAMT, ORNCMAMT, ORSLSAMT, CURRNIDX, DEX_ROW_ID FROM .RM10501 WHERE COMTRSRC BETWEEN @COMTRSRC_RS AND @COMTRSRC_RE AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE AND ( COMTRSRC = @COMTRSRC AND SLPRSNID > @SLPRSNID OR COMTRSRC > @COMTRSRC ) ORDER BY COMTRSRC ASC, SLPRSNID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10501UN_5] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00101F_1] (@VNDCLSID_RS char(11), @DISTTYPE_RS smallint, @SEQNUMBR_RS int, @VNDCLSID_RE char(11), @DISTTYPE_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @VNDCLSID_RS IS NULL BEGIN SELECT TOP 25  VNDCLSID, DISTTYPE, SEQNUMBR, ACTINDX, Default_On_Trx, DEX_ROW_ID FROM .PM00101 ORDER BY VNDCLSID ASC, DISTTYPE ASC, SEQNUMBR ASC END ELSE IF @VNDCLSID_RS = @VNDCLSID_RE BEGIN SELECT TOP 25  VNDCLSID, DISTTYPE, SEQNUMBR, ACTINDX, Default_On_Trx, DEX_ROW_ID FROM .PM00101 WHERE VNDCLSID = @VNDCLSID_RS AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY VNDCLSID ASC, DISTTYPE ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  VNDCLSID, DISTTYPE, SEQNUMBR, ACTINDX, Default_On_Trx, DEX_ROW_ID FROM .PM00101 WHERE VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY VNDCLSID ASC, DISTTYPE ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00101F_1] TO [DYNGRP]
GO

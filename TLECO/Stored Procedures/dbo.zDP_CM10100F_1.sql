SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM10100F_1] (@CHEKBKID_RS char(15), @depositnumber_RS char(21), @CHEKBKID_RE char(15), @depositnumber_RE char(21)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CHEKBKID, depositnumber, DEPTYPE, DEPWTHRCT, DEPDATE, GLPOSTDT, DepAmt, MDFUSRID, MODIFDT, CURNCYID, DSCRIPTN, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10100 ORDER BY CHEKBKID ASC, depositnumber ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CHEKBKID, depositnumber, DEPTYPE, DEPWTHRCT, DEPDATE, GLPOSTDT, DepAmt, MDFUSRID, MODIFDT, CURNCYID, DSCRIPTN, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10100 WHERE CHEKBKID = @CHEKBKID_RS AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE ORDER BY CHEKBKID ASC, depositnumber ASC END ELSE BEGIN SELECT TOP 25  CHEKBKID, depositnumber, DEPTYPE, DEPWTHRCT, DEPDATE, GLPOSTDT, DepAmt, MDFUSRID, MODIFDT, CURNCYID, DSCRIPTN, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10100 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE ORDER BY CHEKBKID ASC, depositnumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM10100F_1] TO [DYNGRP]
GO

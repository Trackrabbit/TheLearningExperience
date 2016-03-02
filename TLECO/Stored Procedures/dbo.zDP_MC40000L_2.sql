SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40000L_2] (@RPTGCURR_RS char(15), @RPTGCURR_RE char(15)) AS  set nocount on IF @RPTGCURR_RS IS NULL BEGIN SELECT TOP 25  FUNLCURR, FUNCRIDX, RPTGCURR, RPTCRIDX, RPTXRATE, RPRTCLMD, ALOWNWRT, ANWRTPWD, ALWMODRT, MODRTPWD, ALOVEXRT, OVXRTPWD, AOVRTVAR, OVRTVPWD, AOVRPTRT, OVRPRPWD, AVGEXRAT, DEFFINTP, DEFSLSTP, DEFPURTP, MNSUMHST, LSTREVAL, LSTPRVAL, LSTSRVAL, LSTTRXRV, LSTSUMRV, AVGCLMD, DEX_ROW_TS, DEX_ROW_ID FROM .MC40000 ORDER BY RPTGCURR DESC END ELSE IF @RPTGCURR_RS = @RPTGCURR_RE BEGIN SELECT TOP 25  FUNLCURR, FUNCRIDX, RPTGCURR, RPTCRIDX, RPTXRATE, RPRTCLMD, ALOWNWRT, ANWRTPWD, ALWMODRT, MODRTPWD, ALOVEXRT, OVXRTPWD, AOVRTVAR, OVRTVPWD, AOVRPTRT, OVRPRPWD, AVGEXRAT, DEFFINTP, DEFSLSTP, DEFPURTP, MNSUMHST, LSTREVAL, LSTPRVAL, LSTSRVAL, LSTTRXRV, LSTSUMRV, AVGCLMD, DEX_ROW_TS, DEX_ROW_ID FROM .MC40000 WHERE RPTGCURR = @RPTGCURR_RS ORDER BY RPTGCURR DESC END ELSE BEGIN SELECT TOP 25  FUNLCURR, FUNCRIDX, RPTGCURR, RPTCRIDX, RPTXRATE, RPRTCLMD, ALOWNWRT, ANWRTPWD, ALWMODRT, MODRTPWD, ALOVEXRT, OVXRTPWD, AOVRTVAR, OVRTVPWD, AOVRPTRT, OVRPRPWD, AVGEXRAT, DEFFINTP, DEFSLSTP, DEFPURTP, MNSUMHST, LSTREVAL, LSTPRVAL, LSTSRVAL, LSTTRXRV, LSTSUMRV, AVGCLMD, DEX_ROW_TS, DEX_ROW_ID FROM .MC40000 WHERE RPTGCURR BETWEEN @RPTGCURR_RS AND @RPTGCURR_RE ORDER BY RPTGCURR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40000L_2] TO [DYNGRP]
GO

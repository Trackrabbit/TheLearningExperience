SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40000SS_2] (@RPTGCURR char(15)) AS  set nocount on SELECT TOP 1  FUNLCURR, FUNCRIDX, RPTGCURR, RPTCRIDX, RPTXRATE, RPRTCLMD, ALOWNWRT, ANWRTPWD, ALWMODRT, MODRTPWD, ALOVEXRT, OVXRTPWD, AOVRTVAR, OVRTVPWD, AOVRPTRT, OVRPRPWD, AVGEXRAT, DEFFINTP, DEFSLSTP, DEFPURTP, MNSUMHST, LSTREVAL, LSTPRVAL, LSTSRVAL, LSTTRXRV, LSTSUMRV, AVGCLMD, DEX_ROW_TS, DEX_ROW_ID FROM .MC40000 WHERE RPTGCURR = @RPTGCURR ORDER BY RPTGCURR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40000SS_2] TO [DYNGRP]
GO

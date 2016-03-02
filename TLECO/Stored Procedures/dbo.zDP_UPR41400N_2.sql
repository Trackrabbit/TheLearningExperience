SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41400N_2] (@BS int, @DSCRIPTN char(31), @LOCALTAX char(7), @DSCRIPTN_RS char(31), @LOCALTAX_RS char(7), @DSCRIPTN_RE char(31), @LOCALTAX_RE char(7)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  LOCALTAX, DSCRIPTN, LCLTXCAL_1, LCLTXCAL_2, LCLTXCAL_3, LCLTXCAL_4, LCLTXCAL_5, EXMTAMNT, MNTXBLWG, MYTDTXWG, LCLTAXRT, LCLTXAMT, MAXPERYR, INACTIVE, NOTEINDX, STDDMTHD, STDDPCNT, STDDEDAM, STDEDMAX, STDEDMIN, TAXTYPE, DEX_ROW_ID FROM .UPR41400 WHERE ( DSCRIPTN = @DSCRIPTN AND LOCALTAX > @LOCALTAX OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, LOCALTAX ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  LOCALTAX, DSCRIPTN, LCLTXCAL_1, LCLTXCAL_2, LCLTXCAL_3, LCLTXCAL_4, LCLTXCAL_5, EXMTAMNT, MNTXBLWG, MYTDTXWG, LCLTAXRT, LCLTXAMT, MAXPERYR, INACTIVE, NOTEINDX, STDDMTHD, STDDPCNT, STDDEDAM, STDEDMAX, STDEDMIN, TAXTYPE, DEX_ROW_ID FROM .UPR41400 WHERE DSCRIPTN = @DSCRIPTN_RS AND LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE AND ( DSCRIPTN = @DSCRIPTN AND LOCALTAX > @LOCALTAX OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, LOCALTAX ASC END ELSE BEGIN SELECT TOP 25  LOCALTAX, DSCRIPTN, LCLTXCAL_1, LCLTXCAL_2, LCLTXCAL_3, LCLTXCAL_4, LCLTXCAL_5, EXMTAMNT, MNTXBLWG, MYTDTXWG, LCLTAXRT, LCLTXAMT, MAXPERYR, INACTIVE, NOTEINDX, STDDMTHD, STDDPCNT, STDDEDAM, STDEDMAX, STDEDMIN, TAXTYPE, DEX_ROW_ID FROM .UPR41400 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE AND ( DSCRIPTN = @DSCRIPTN AND LOCALTAX > @LOCALTAX OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, LOCALTAX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41400N_2] TO [DYNGRP]
GO
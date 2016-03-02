SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00107F_3] (@ITEMNMBR_RS char(31), @CURNCYID_RS char(15), @UOFM_RS char(9), @PRCLEVEL_RS char(11), @ITEMNMBR_RE char(31), @CURNCYID_RE char(15), @UOFM_RE char(9), @PRCLEVEL_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, RNDGAMNT, ROUNDHOW, ROUNDTO, UMSLSOPT, QTYBSUOM, DEX_ROW_TS, DEX_ROW_ID FROM .IV00107 ORDER BY ITEMNMBR ASC, CURNCYID ASC, UOFM ASC, PRCLEVEL ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, RNDGAMNT, ROUNDHOW, ROUNDTO, UMSLSOPT, QTYBSUOM, DEX_ROW_TS, DEX_ROW_ID FROM .IV00107 WHERE ITEMNMBR = @ITEMNMBR_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE ORDER BY ITEMNMBR ASC, CURNCYID ASC, UOFM ASC, PRCLEVEL ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, RNDGAMNT, ROUNDHOW, ROUNDTO, UMSLSOPT, QTYBSUOM, DEX_ROW_TS, DEX_ROW_ID FROM .IV00107 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE ORDER BY ITEMNMBR ASC, CURNCYID ASC, UOFM ASC, PRCLEVEL ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00107F_3] TO [DYNGRP]
GO

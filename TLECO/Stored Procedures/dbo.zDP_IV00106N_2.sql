SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00106N_2] (@BS int, @ITEMNMBR char(31), @QTYBSUOM numeric(19,5), @UOFM char(9), @ITEMNMBR_RS char(31), @QTYBSUOM_RS numeric(19,5), @UOFM_RS char(9), @ITEMNMBR_RE char(31), @QTYBSUOM_RE numeric(19,5), @UOFM_RE char(9)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, UOFM, QTYBSUOM, UMPUROPT, DEX_ROW_ID FROM .IV00106 WHERE ( ITEMNMBR = @ITEMNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR ITEMNMBR = @ITEMNMBR AND QTYBSUOM > @QTYBSUOM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, QTYBSUOM ASC, UOFM ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, UOFM, QTYBSUOM, UMPUROPT, DEX_ROW_ID FROM .IV00106 WHERE ITEMNMBR = @ITEMNMBR_RS AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND ( ITEMNMBR = @ITEMNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR ITEMNMBR = @ITEMNMBR AND QTYBSUOM > @QTYBSUOM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, QTYBSUOM ASC, UOFM ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, UOFM, QTYBSUOM, UMPUROPT, DEX_ROW_ID FROM .IV00106 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND ( ITEMNMBR = @ITEMNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR ITEMNMBR = @ITEMNMBR AND QTYBSUOM > @QTYBSUOM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, QTYBSUOM ASC, UOFM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00106N_2] TO [DYNGRP]
GO

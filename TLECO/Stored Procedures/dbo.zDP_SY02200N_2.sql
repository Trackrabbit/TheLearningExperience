SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02200N_2] (@BS int, @TRXSOURC char(25), @SERIES smallint, @PTGRPTNM char(31), @TRXSOURC_RS char(25), @SERIES_RS smallint, @PTGRPTNM_RS char(31), @TRXSOURC_RE char(25), @SERIES_RE smallint, @PTGRPTNM_RE char(31)) AS  set nocount on IF @TRXSOURC_RS IS NULL BEGIN SELECT TOP 25  FILEXPNM, PRNTJRNL, SERIES, TRXSOURC, PTGRPTNM, ASECTMNT, PRTOPRNT, PRTOSCNT, PRTOFLNT, EXPTTYPE, APNDRPLC, DEX_ROW_ID FROM .SY02200 WHERE ( TRXSOURC = @TRXSOURC AND SERIES = @SERIES AND PTGRPTNM > @PTGRPTNM OR TRXSOURC = @TRXSOURC AND SERIES > @SERIES OR TRXSOURC > @TRXSOURC ) ORDER BY TRXSOURC ASC, SERIES ASC, PTGRPTNM ASC END ELSE IF @TRXSOURC_RS = @TRXSOURC_RE BEGIN SELECT TOP 25  FILEXPNM, PRNTJRNL, SERIES, TRXSOURC, PTGRPTNM, ASECTMNT, PRTOPRNT, PRTOSCNT, PRTOFLNT, EXPTTYPE, APNDRPLC, DEX_ROW_ID FROM .SY02200 WHERE TRXSOURC = @TRXSOURC_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND PTGRPTNM BETWEEN @PTGRPTNM_RS AND @PTGRPTNM_RE AND ( TRXSOURC = @TRXSOURC AND SERIES = @SERIES AND PTGRPTNM > @PTGRPTNM OR TRXSOURC = @TRXSOURC AND SERIES > @SERIES OR TRXSOURC > @TRXSOURC ) ORDER BY TRXSOURC ASC, SERIES ASC, PTGRPTNM ASC END ELSE BEGIN SELECT TOP 25  FILEXPNM, PRNTJRNL, SERIES, TRXSOURC, PTGRPTNM, ASECTMNT, PRTOPRNT, PRTOSCNT, PRTOFLNT, EXPTTYPE, APNDRPLC, DEX_ROW_ID FROM .SY02200 WHERE TRXSOURC BETWEEN @TRXSOURC_RS AND @TRXSOURC_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND PTGRPTNM BETWEEN @PTGRPTNM_RS AND @PTGRPTNM_RE AND ( TRXSOURC = @TRXSOURC AND SERIES = @SERIES AND PTGRPTNM > @PTGRPTNM OR TRXSOURC = @TRXSOURC AND SERIES > @SERIES OR TRXSOURC > @TRXSOURC ) ORDER BY TRXSOURC ASC, SERIES ASC, PTGRPTNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02200N_2] TO [DYNGRP]
GO

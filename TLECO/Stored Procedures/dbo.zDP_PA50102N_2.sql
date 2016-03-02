SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50102N_2] (@BS int, @USERID char(15), @CPRCSTNM char(15), @APFRDCTY smallint, @APFRDCNM char(21), @APTODCTY smallint, @APTODCNM char(21), @DEX_ROW_ID int, @USERID_RS char(15), @CPRCSTNM_RS char(15), @APFRDCTY_RS smallint, @APFRDCNM_RS char(21), @APTODCTY_RS smallint, @APTODCNM_RS char(21), @USERID_RE char(15), @CPRCSTNM_RE char(15), @APFRDCTY_RE smallint, @APFRDCNM_RE char(21), @APTODCTY_RE smallint, @APTODCNM_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 WHERE ( USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY > @APTODCTY OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY > @APFRDCTY OR USERID = @USERID AND CPRCSTNM > @CPRCSTNM OR USERID > @USERID ) ORDER BY USERID ASC, CPRCSTNM ASC, APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 WHERE USERID = @USERID_RS AND CPRCSTNM BETWEEN @CPRCSTNM_RS AND @CPRCSTNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY > @APTODCTY OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY > @APFRDCTY OR USERID = @USERID AND CPRCSTNM > @CPRCSTNM OR USERID > @USERID ) ORDER BY USERID ASC, CPRCSTNM ASC, APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CPRCSTNM BETWEEN @CPRCSTNM_RS AND @CPRCSTNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY > @APTODCTY OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR USERID = @USERID AND CPRCSTNM = @CPRCSTNM AND APFRDCTY > @APFRDCTY OR USERID = @USERID AND CPRCSTNM > @CPRCSTNM OR USERID > @USERID ) ORDER BY USERID ASC, CPRCSTNM ASC, APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50102N_2] TO [DYNGRP]
GO
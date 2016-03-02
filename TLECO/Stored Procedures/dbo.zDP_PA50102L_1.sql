SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50102L_1] (@USERID_RS char(15), @CUSTNMBR_RS char(15), @APFRDCTY_RS smallint, @APFRDCNM_RS char(21), @APTODCTY_RS smallint, @APTODCNM_RS char(21), @USERID_RE char(15), @CUSTNMBR_RE char(15), @APFRDCTY_RE smallint, @APFRDCNM_RE char(21), @APTODCTY_RE smallint, @APTODCNM_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 ORDER BY USERID DESC, CUSTNMBR DESC, APFRDCTY DESC, APFRDCNM DESC, APTODCTY DESC, APTODCNM DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 WHERE USERID = @USERID_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE ORDER BY USERID DESC, CUSTNMBR DESC, APFRDCTY DESC, APFRDCNM DESC, APTODCTY DESC, APTODCNM DESC END ELSE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply, DEX_ROW_ID FROM .PA50102 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE ORDER BY USERID DESC, CUSTNMBR DESC, APFRDCTY DESC, APFRDCNM DESC, APTODCTY DESC, APTODCNM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50102L_1] TO [DYNGRP]
GO

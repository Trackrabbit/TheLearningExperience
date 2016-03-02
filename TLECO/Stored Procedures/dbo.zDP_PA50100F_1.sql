SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50100F_1] (@USERID_RS char(15), @CUSTNMBR_RS char(15), @USERID_RE char(15), @CUSTNMBR_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 ORDER BY USERID ASC, CUSTNMBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 WHERE USERID = @USERID_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY USERID ASC, CUSTNMBR ASC END ELSE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY USERID ASC, CUSTNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50100F_1] TO [DYNGRP]
GO

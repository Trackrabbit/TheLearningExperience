SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50100N_2] (@BS int, @USERID char(15), @VENDORID char(15), @DEX_ROW_ID int, @USERID_RS char(15), @VENDORID_RS char(15), @USERID_RE char(15), @VENDORID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 WHERE ( USERID = @USERID AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND VENDORID > @VENDORID OR USERID > @USERID ) ORDER BY USERID ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 WHERE USERID = @USERID_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( USERID = @USERID AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND VENDORID > @VENDORID OR USERID > @USERID ) ORDER BY USERID ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CUSTNMBR, CPRCSTNM, VENDORID, Balance, OriginatingBalance, NUMOFINV, DOCNUMBR, VCHRNMBR, CURNCYID, ERROR, DEX_ROW_ID FROM .PA50100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( USERID = @USERID AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND VENDORID > @VENDORID OR USERID > @USERID ) ORDER BY USERID ASC, VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50100N_2] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400UN_7] (@BS int, @VENDORID char(15), @DCSTATUS smallint, @DOCTYPE smallint, @VENDORID_RS char(15), @DCSTATUS_RS smallint, @DOCTYPE_RS smallint, @VENDORID_RE char(15), @DCSTATUS_RE smallint, @DOCTYPE_RE smallint) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE ( VENDORID = @VENDORID AND DCSTATUS = @DCSTATUS AND DOCTYPE > @DOCTYPE OR VENDORID = @VENDORID AND DCSTATUS > @DCSTATUS OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DCSTATUS ASC, DOCTYPE ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE VENDORID = @VENDORID_RS AND DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( VENDORID = @VENDORID AND DCSTATUS = @DCSTATUS AND DOCTYPE > @DOCTYPE OR VENDORID = @VENDORID AND DCSTATUS > @DCSTATUS OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DCSTATUS ASC, DOCTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( VENDORID = @VENDORID AND DCSTATUS = @DCSTATUS AND DOCTYPE > @DOCTYPE OR VENDORID = @VENDORID AND DCSTATUS > @DCSTATUS OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DCSTATUS ASC, DOCTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400UN_7] TO [DYNGRP]
GO
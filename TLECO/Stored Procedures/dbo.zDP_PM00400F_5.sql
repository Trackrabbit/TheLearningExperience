SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400F_5] (@VENDORID_RS char(15), @DCSTATUS_RS smallint, @DOCDATE_RS datetime, @VENDORID_RE char(15), @DCSTATUS_RE smallint, @DOCDATE_RE datetime) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 ORDER BY VENDORID ASC, DCSTATUS ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE VENDORID = @VENDORID_RS AND DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY VENDORID ASC, DCSTATUS ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY VENDORID ASC, DCSTATUS ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400F_5] TO [DYNGRP]
GO

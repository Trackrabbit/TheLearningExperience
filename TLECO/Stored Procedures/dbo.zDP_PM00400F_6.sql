SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400F_6] (@TRXSORCE_RS char(13), @CNTRLNUM_RS char(21), @TRXSORCE_RE char(13), @CNTRLNUM_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 ORDER BY TRXSORCE ASC, CNTRLNUM ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE TRXSORCE = @TRXSORCE_RS AND CNTRLNUM BETWEEN @CNTRLNUM_RS AND @CNTRLNUM_RE ORDER BY TRXSORCE ASC, CNTRLNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND CNTRLNUM BETWEEN @CNTRLNUM_RS AND @CNTRLNUM_RE ORDER BY TRXSORCE ASC, CNTRLNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400F_6] TO [DYNGRP]
GO

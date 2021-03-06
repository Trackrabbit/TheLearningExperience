SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00921F_1] (@SRVTYPE_RS char(11), @LNITMSEQ_RS int, @SRVTYPE_RE char(11), @LNITMSEQ_RE int) AS  set nocount on IF @SRVTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ITEMNMBR, ITEMDESC, QUANTITY, LISTPRCE, COSTAMNT, PRICSHED, CBLABOR, CBARTS, CBEXP, CBADDNL, DLRORPCT, DEX_ROW_ID FROM .SVC00921 ORDER BY SRVTYPE ASC, LNITMSEQ ASC END ELSE IF @SRVTYPE_RS = @SRVTYPE_RE BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ITEMNMBR, ITEMDESC, QUANTITY, LISTPRCE, COSTAMNT, PRICSHED, CBLABOR, CBARTS, CBEXP, CBADDNL, DLRORPCT, DEX_ROW_ID FROM .SVC00921 WHERE SRVTYPE = @SRVTYPE_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SRVTYPE ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ITEMNMBR, ITEMDESC, QUANTITY, LISTPRCE, COSTAMNT, PRICSHED, CBLABOR, CBARTS, CBEXP, CBADDNL, DLRORPCT, DEX_ROW_ID FROM .SVC00921 WHERE SRVTYPE BETWEEN @SRVTYPE_RS AND @SRVTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SRVTYPE ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00921F_1] TO [DYNGRP]
GO

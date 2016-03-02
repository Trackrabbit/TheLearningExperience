SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30202F_2] (@APFRDCTY_RS smallint, @APFRDCNM_RS char(21), @APTODCTY_RS smallint, @APTODCNM_RS char(21), @APFRDCTY_RE smallint, @APFRDCNM_RE char(21), @APTODCTY_RE smallint, @APTODCNM_RE char(21)) AS  set nocount on IF @APFRDCTY_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, APTODCNM, APTODCTY, APPTOAMT, APFRDCNM, APFRDCTY, APFRDCDT, TRXSORCE, DISTKNAM, WROFAMNT, DATE1, GLPOSTDT, POSTED, GSTDSAMT, PPSAMDED, TAXDTLID, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, DEX_ROW_ID FROM .RM30202 ORDER BY APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC END ELSE IF @APFRDCTY_RS = @APFRDCTY_RE BEGIN SELECT TOP 25  CUSTNMBR, APTODCNM, APTODCTY, APPTOAMT, APFRDCNM, APFRDCTY, APFRDCDT, TRXSORCE, DISTKNAM, WROFAMNT, DATE1, GLPOSTDT, POSTED, GSTDSAMT, PPSAMDED, TAXDTLID, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, DEX_ROW_ID FROM .RM30202 WHERE APFRDCTY = @APFRDCTY_RS AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE ORDER BY APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, APTODCNM, APTODCTY, APPTOAMT, APFRDCNM, APFRDCTY, APFRDCDT, TRXSORCE, DISTKNAM, WROFAMNT, DATE1, GLPOSTDT, POSTED, GSTDSAMT, PPSAMDED, TAXDTLID, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, DEX_ROW_ID FROM .RM30202 WHERE APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE ORDER BY APFRDCTY ASC, APFRDCNM ASC, APTODCTY ASC, APTODCNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30202F_2] TO [DYNGRP]
GO

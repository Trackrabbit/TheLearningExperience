SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC80010L_1] (@CALLNBR_RS char(11), @CALLNBR_RE char(11)) AS  set nocount on IF @CALLNBR_RS IS NULL BEGIN SELECT TOP 25  SERLNMBR, PMDTLID, SCHEDID, CALLNBR, ITEMNMBR, SRVTYPE, CUSTNMBR, QUANTITY, PARSTOTPRC, LABSTOTPRC, PARSTOTCST, LABSTOTCST, MARKED, CONSTS, CONTNBR, LNSEQNBR, DEX_ROW_ID FROM .SVC80010 ORDER BY CALLNBR DESC END ELSE IF @CALLNBR_RS = @CALLNBR_RE BEGIN SELECT TOP 25  SERLNMBR, PMDTLID, SCHEDID, CALLNBR, ITEMNMBR, SRVTYPE, CUSTNMBR, QUANTITY, PARSTOTPRC, LABSTOTPRC, PARSTOTCST, LABSTOTCST, MARKED, CONSTS, CONTNBR, LNSEQNBR, DEX_ROW_ID FROM .SVC80010 WHERE CALLNBR = @CALLNBR_RS ORDER BY CALLNBR DESC END ELSE BEGIN SELECT TOP 25  SERLNMBR, PMDTLID, SCHEDID, CALLNBR, ITEMNMBR, SRVTYPE, CUSTNMBR, QUANTITY, PARSTOTPRC, LABSTOTPRC, PARSTOTCST, LABSTOTCST, MARKED, CONSTS, CONTNBR, LNSEQNBR, DEX_ROW_ID FROM .SVC80010 WHERE CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY CALLNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC80010L_1] TO [DYNGRP]
GO

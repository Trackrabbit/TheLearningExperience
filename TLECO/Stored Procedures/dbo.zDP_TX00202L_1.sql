SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00202L_1] (@TAXDTLID_RS char(15), @TAXDTLID_RE char(15)) AS  set nocount on IF @TAXDTLID_RS IS NULL BEGIN SELECT TOP 25  TAXDTLID, TDTSYTD, TDSLLYTD, TXDTSYTD, TDTSLYTD, TXDSTYTD, TDSTLYTD, KPCALHST, KPERHIST, DEX_ROW_ID FROM .TX00202 ORDER BY TAXDTLID DESC END ELSE IF @TAXDTLID_RS = @TAXDTLID_RE BEGIN SELECT TOP 25  TAXDTLID, TDTSYTD, TDSLLYTD, TXDTSYTD, TDTSLYTD, TXDSTYTD, TDSTLYTD, KPCALHST, KPERHIST, DEX_ROW_ID FROM .TX00202 WHERE TAXDTLID = @TAXDTLID_RS ORDER BY TAXDTLID DESC END ELSE BEGIN SELECT TOP 25  TAXDTLID, TDTSYTD, TDSLLYTD, TXDTSYTD, TDTSLYTD, TXDSTYTD, TDSTLYTD, KPCALHST, KPERHIST, DEX_ROW_ID FROM .TX00202 WHERE TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY TAXDTLID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00202L_1] TO [DYNGRP]
GO

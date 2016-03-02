SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00102L_2] (@TAXSCHID_RS char(15), @TAXSCHID_RE char(15)) AS  set nocount on IF @TAXSCHID_RS IS NULL BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 ORDER BY TAXSCHID DESC, DEX_ROW_ID DESC END ELSE IF @TAXSCHID_RS = @TAXSCHID_RE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID = @TAXSCHID_RS ORDER BY TAXSCHID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID BETWEEN @TAXSCHID_RS AND @TAXSCHID_RE ORDER BY TAXSCHID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00102L_2] TO [DYNGRP]
GO

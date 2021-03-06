SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00102UN_2] (@BS int, @TAXSCHID char(15), @TAXSCHID_RS char(15), @TAXSCHID_RE char(15)) AS  set nocount on IF @TAXSCHID_RS IS NULL BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE ( TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, DEX_ROW_ID ASC END ELSE IF @TAXSCHID_RS = @TAXSCHID_RE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID = @TAXSCHID_RS AND ( TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID BETWEEN @TAXSCHID_RS AND @TAXSCHID_RE AND ( TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00102UN_2] TO [DYNGRP]
GO

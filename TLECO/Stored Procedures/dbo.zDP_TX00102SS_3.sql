SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00102SS_3] (@TAXDTLID char(15)) AS  set nocount on SELECT TOP 1  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXDTLID = @TAXDTLID ORDER BY TAXDTLID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00102SS_3] TO [DYNGRP]
GO

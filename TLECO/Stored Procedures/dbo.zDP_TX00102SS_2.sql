SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00102SS_2] (@TAXSCHID char(15)) AS  set nocount on SELECT TOP 1  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID = @TAXSCHID ORDER BY TAXSCHID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00102SS_2] TO [DYNGRP]
GO

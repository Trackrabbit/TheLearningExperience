SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10003SS_2] (@TRANSNATDESC char(31), @TRANSNATURE char(7)) AS  set nocount on SELECT TOP 1  TRANSNATURE, TRANSNATDESC, NOTEINDX, DEX_ROW_ID FROM .VAT10003 WHERE TRANSNATDESC = @TRANSNATDESC AND TRANSNATURE = @TRANSNATURE ORDER BY TRANSNATDESC ASC, TRANSNATURE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10003SS_2] TO [DYNGRP]
GO

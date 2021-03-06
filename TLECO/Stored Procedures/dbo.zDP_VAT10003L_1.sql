SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10003L_1] (@TRANSNATURE_RS char(7), @TRANSNATURE_RE char(7)) AS  set nocount on IF @TRANSNATURE_RS IS NULL BEGIN SELECT TOP 25  TRANSNATURE, TRANSNATDESC, NOTEINDX, DEX_ROW_ID FROM .VAT10003 ORDER BY TRANSNATURE DESC END ELSE IF @TRANSNATURE_RS = @TRANSNATURE_RE BEGIN SELECT TOP 25  TRANSNATURE, TRANSNATDESC, NOTEINDX, DEX_ROW_ID FROM .VAT10003 WHERE TRANSNATURE = @TRANSNATURE_RS ORDER BY TRANSNATURE DESC END ELSE BEGIN SELECT TOP 25  TRANSNATURE, TRANSNATDESC, NOTEINDX, DEX_ROW_ID FROM .VAT10003 WHERE TRANSNATURE BETWEEN @TRANSNATURE_RS AND @TRANSNATURE_RE ORDER BY TRANSNATURE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10003L_1] TO [DYNGRP]
GO

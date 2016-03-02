SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10002SS_2] (@TMCODEDESC char(31), @TMCODE char(7)) AS  set nocount on SELECT TOP 1  TMCODE, TMCODEDESC, NOTEINDX, DEX_ROW_ID FROM .VAT10002 WHERE TMCODEDESC = @TMCODEDESC AND TMCODE = @TMCODE ORDER BY TMCODEDESC ASC, TMCODE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10002SS_2] TO [DYNGRP]
GO
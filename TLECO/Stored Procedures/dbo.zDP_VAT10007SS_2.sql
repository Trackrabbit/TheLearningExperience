SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10007SS_2] (@INTRSTTTYP smallint, @INTRSTTFLDDSC char(31), @INTRSTTFLD char(7)) AS  set nocount on SELECT TOP 1  INTRSTTTYP, INTRSTTFLD, INTRSTTFLDDSC, NOTEINDX, DEX_ROW_ID FROM .VAT10007 WHERE INTRSTTTYP = @INTRSTTTYP AND INTRSTTFLDDSC = @INTRSTTFLDDSC AND INTRSTTFLD = @INTRSTTFLD ORDER BY INTRSTTTYP ASC, INTRSTTFLDDSC ASC, INTRSTTFLD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10007SS_2] TO [DYNGRP]
GO

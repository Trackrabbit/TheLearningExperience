SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40201SS_1] (@UOMSCHDL char(11)) AS  set nocount on SELECT TOP 1  UOMSCHDL, UMSCHDSC, NOTEINDX, BASEUOFM, UMDPQTYS, DEX_ROW_TS, DEX_ROW_ID FROM .IV40201 WHERE UOMSCHDL = @UOMSCHDL ORDER BY UOMSCHDL ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40201SS_1] TO [DYNGRP]
GO
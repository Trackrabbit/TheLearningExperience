SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN05SS_1] (@BENEFITTYPE_I char(7)) AS  set nocount on SELECT TOP 1  BENEFITTYPE_I, DSCRIPTN, NOTESINDEX_I, DEX_ROW_ID FROM .HR2BEN05 WHERE BENEFITTYPE_I = @BENEFITTYPE_I ORDER BY BENEFITTYPE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN05SS_1] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000000SS_1] (@SETUPKEY smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SETUPKEY, BSSI_UseINVMGR, BSSI_UseLeaseLoan, BSSI_DefPDFWriter, BSSI_PrintOptions, DEX_ROW_ID FROM .B9000000 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000000SS_1] TO [DYNGRP]
GO

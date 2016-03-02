SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0100SS_1] (@SETUPKEY smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SETUPKEY, BSSI_Registration, BSSI_Registration_Key2, BSSI_Registration_Key3, BSSI_Registration_Key4, BSSI_Registration_Trail_, BSSI_Registration_Trail2, BSSI_Registration_Trail3, BSSI_Registration_Trail4, NOTEINDX, DEX_ROW_ID FROM .BSSI0100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0100SS_1] TO [DYNGRP]
GO

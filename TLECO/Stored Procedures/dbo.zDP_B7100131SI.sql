SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100131SI] (@MODULE1 smallint, @BSSI_On_Hold_Acct_Index int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100131 (MODULE1, BSSI_On_Hold_Acct_Index) VALUES ( @MODULE1, @BSSI_On_Hold_Acct_Index) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100131SI] TO [DYNGRP]
GO

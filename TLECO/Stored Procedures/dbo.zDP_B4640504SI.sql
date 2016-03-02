SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640504SI] (@BSSI_Type smallint, @BSSI_Column_ID smallint, @BSSI_Column_Filter_ID char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640504 (BSSI_Type, BSSI_Column_ID, BSSI_Column_Filter_ID) VALUES ( @BSSI_Type, @BSSI_Column_ID, @BSSI_Column_Filter_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640504SI] TO [DYNGRP]
GO

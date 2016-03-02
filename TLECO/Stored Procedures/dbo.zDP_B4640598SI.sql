SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640598SI] (@BSSI_Column_Filter_ID char(25), @BSSI_Description char(51), @BSSI_Marked tinyint, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640598 (BSSI_Column_Filter_ID, BSSI_Description, BSSI_Marked, USERID) VALUES ( @BSSI_Column_Filter_ID, @BSSI_Description, @BSSI_Marked, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640598SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603100SI] (@BSSI_Rev_Sharing_ID char(25), @BSSI_Description char(51), @BSSI_Rev_Sharing_Type smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4603100 (BSSI_Rev_Sharing_ID, BSSI_Description, BSSI_Rev_Sharing_Type, NOTEINDX) VALUES ( @BSSI_Rev_Sharing_ID, @BSSI_Description, @BSSI_Rev_Sharing_Type, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603100SI] TO [DYNGRP]
GO

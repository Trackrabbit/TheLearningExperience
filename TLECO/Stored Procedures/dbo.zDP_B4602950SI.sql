SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602950SI] (@BSSI_Ground_Lease_Number char(25), @BSSI_Rev_Sharing_Type smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602950 (BSSI_Ground_Lease_Number, BSSI_Rev_Sharing_Type, NOTEINDX) VALUES ( @BSSI_Ground_Lease_Number, @BSSI_Rev_Sharing_Type, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602950SI] TO [DYNGRP]
GO

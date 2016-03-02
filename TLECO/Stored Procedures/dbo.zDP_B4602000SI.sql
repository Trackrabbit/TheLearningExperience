SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602000SI] (@VENDORID char(15), @BSSI_Landlord_TypeID char(25), @BSSI_Rev_Sharing_Type smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602000 (VENDORID, BSSI_Landlord_TypeID, BSSI_Rev_Sharing_Type) VALUES ( @VENDORID, @BSSI_Landlord_TypeID, @BSSI_Rev_Sharing_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602000SI] TO [DYNGRP]
GO

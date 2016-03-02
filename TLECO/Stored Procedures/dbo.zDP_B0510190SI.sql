SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510190SI] (@MJW_Address_Type char(21), @MJW_Address_Type_Descrip char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510190 (MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX) VALUES ( @MJW_Address_Type, @MJW_Address_Type_Descrip, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510190SI] TO [DYNGRP]
GO

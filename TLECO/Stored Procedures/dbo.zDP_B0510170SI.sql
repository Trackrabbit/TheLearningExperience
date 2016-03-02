SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510170SI] (@MJW_Owner_Type_Code char(21), @MJW_Owner_Type_Code_Desc char(51), @MJW_K1_Map char(11), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510170 (MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX) VALUES ( @MJW_Owner_Type_Code, @MJW_Owner_Type_Code_Desc, @MJW_K1_Map, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510170SI] TO [DYNGRP]
GO

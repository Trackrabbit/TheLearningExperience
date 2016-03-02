SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510104SI] (@VENDORID char(15), @MJW_Occupation char(101), @MJW_Suitable_Networth char(101), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510104 (VENDORID, MJW_Occupation, MJW_Suitable_Networth) VALUES ( @VENDORID, @MJW_Occupation, @MJW_Suitable_Networth) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510104SI] TO [DYNGRP]
GO

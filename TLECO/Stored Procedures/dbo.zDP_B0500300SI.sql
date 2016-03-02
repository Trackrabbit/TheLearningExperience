SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500300SI] (@CUSTNMBR char(15), @BSSI_Customer_Type smallint, @BSSI_Investor_Type smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0500300 (CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type) VALUES ( @CUSTNMBR, @BSSI_Customer_Type, @BSSI_Investor_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500300SI] TO [DYNGRP]
GO

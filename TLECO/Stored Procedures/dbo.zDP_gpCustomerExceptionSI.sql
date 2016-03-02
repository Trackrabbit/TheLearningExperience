SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpCustomerExceptionSI] (@CUSTNMBR char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .gpCustomerException (CUSTNMBR) VALUES ( @CUSTNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpCustomerExceptionSI] TO [DYNGRP]
GO

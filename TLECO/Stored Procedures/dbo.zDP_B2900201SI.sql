SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900201SI] (@BSSI_LeaseLoanType char(7), @BSSI_LeaseLoan_NextNo char(11), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900201 (BSSI_LeaseLoanType, BSSI_LeaseLoan_NextNo, NOTEINDX) VALUES ( @BSSI_LeaseLoanType, @BSSI_LeaseLoan_NextNo, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900201SI] TO [DYNGRP]
GO

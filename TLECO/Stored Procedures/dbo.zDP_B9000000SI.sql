SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000000SI] (@SETUPKEY smallint, @BSSI_UseINVMGR tinyint, @BSSI_UseLeaseLoan tinyint, @BSSI_DefPDFWriter smallint, @BSSI_PrintOptions smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B9000000 (SETUPKEY, BSSI_UseINVMGR, BSSI_UseLeaseLoan, BSSI_DefPDFWriter, BSSI_PrintOptions) VALUES ( @SETUPKEY, @BSSI_UseINVMGR, @BSSI_UseLeaseLoan, @BSSI_DefPDFWriter, @BSSI_PrintOptions) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000000SI] TO [DYNGRP]
GO

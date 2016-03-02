SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602205SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Option_To_Self_Insu smallint, @BSSI_Is_Self_Insurance smallint, @NOTEINDX numeric(19,5), @BSSI_Is_Self_Ins_Note numeric(19,5), @BSSI_Option_Self_InsuNot numeric(19,5), @BSSI_Is_Leasor_Named smallint, @BSSI_Is_Leasor_Named_Not numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602205 (BSSI_Tenant_Lease_Number, BSSI_Option_To_Self_Insu, BSSI_Is_Self_Insurance, NOTEINDX, BSSI_Is_Self_Ins_Note, BSSI_Option_Self_InsuNot, BSSI_Is_Leasor_Named, BSSI_Is_Leasor_Named_Not) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Option_To_Self_Insu, @BSSI_Is_Self_Insurance, @NOTEINDX, @BSSI_Is_Self_Ins_Note, @BSSI_Option_Self_InsuNot, @BSSI_Is_Leasor_Named, @BSSI_Is_Leasor_Named_Not) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602205SI] TO [DYNGRP]
GO

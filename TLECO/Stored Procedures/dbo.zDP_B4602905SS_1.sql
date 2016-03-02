SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602905SS_1] (@BSSI_Ground_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, BSSI_Option_To_Self_Insu, BSSI_Is_Self_Insurance, NOTEINDX, BSSI_Is_Self_Ins_Note, BSSI_Option_Self_InsuNot, BSSI_Is_Leasor_Named, BSSI_Is_Leasor_Named_Not, DEX_ROW_ID FROM .B4602905 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number ORDER BY BSSI_Ground_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602905SS_1] TO [DYNGRP]
GO

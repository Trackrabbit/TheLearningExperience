SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602905F_1] (@BSSI_Ground_Lease_Number_RS char(25), @BSSI_Ground_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Option_To_Self_Insu, BSSI_Is_Self_Insurance, NOTEINDX, BSSI_Is_Self_Ins_Note, BSSI_Option_Self_InsuNot, BSSI_Is_Leasor_Named, BSSI_Is_Leasor_Named_Not, DEX_ROW_ID FROM .B4602905 ORDER BY BSSI_Ground_Lease_Number ASC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Option_To_Self_Insu, BSSI_Is_Self_Insurance, NOTEINDX, BSSI_Is_Self_Ins_Note, BSSI_Option_Self_InsuNot, BSSI_Is_Leasor_Named, BSSI_Is_Leasor_Named_Not, DEX_ROW_ID FROM .B4602905 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS ORDER BY BSSI_Ground_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Option_To_Self_Insu, BSSI_Is_Self_Insurance, NOTEINDX, BSSI_Is_Self_Ins_Note, BSSI_Option_Self_InsuNot, BSSI_Is_Leasor_Named, BSSI_Is_Leasor_Named_Not, DEX_ROW_ID FROM .B4602905 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE ORDER BY BSSI_Ground_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602905F_1] TO [DYNGRP]
GO

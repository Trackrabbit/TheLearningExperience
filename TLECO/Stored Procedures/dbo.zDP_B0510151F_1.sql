SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510151F_1] (@IMS_Type_of_Distribution_RS smallint, @MJW_Distribution_Type_RS char(21), @IMS_Type_of_Distribution_RE smallint, @MJW_Distribution_Type_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @IMS_Type_of_Distribution_RS IS NULL BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 ORDER BY IMS_Type_of_Distribution ASC, MJW_Distribution_Type ASC END ELSE IF @IMS_Type_of_Distribution_RS = @IMS_Type_of_Distribution_RE BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE IMS_Type_of_Distribution = @IMS_Type_of_Distribution_RS AND MJW_Distribution_Type BETWEEN @MJW_Distribution_Type_RS AND @MJW_Distribution_Type_RE ORDER BY IMS_Type_of_Distribution ASC, MJW_Distribution_Type ASC END ELSE BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE IMS_Type_of_Distribution BETWEEN @IMS_Type_of_Distribution_RS AND @IMS_Type_of_Distribution_RE AND MJW_Distribution_Type BETWEEN @MJW_Distribution_Type_RS AND @MJW_Distribution_Type_RE ORDER BY IMS_Type_of_Distribution ASC, MJW_Distribution_Type ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510151F_1] TO [DYNGRP]
GO

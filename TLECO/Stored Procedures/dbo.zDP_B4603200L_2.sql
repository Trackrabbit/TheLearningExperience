SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603200L_2] (@BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_CPIIndexCalculation, BSSI_CPIIndexAmtCalculat, BSSI_EscalateEffective, BSSI_Dummy, DEX_ROW_ID FROM .B4603200 ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_CPIIndexCalculation, BSSI_CPIIndexAmtCalculat, BSSI_EscalateEffective, BSSI_Dummy, DEX_ROW_ID FROM .B4603200 WHERE BSSI_Description = @BSSI_Description_RS ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_CPIIndexCalculation, BSSI_CPIIndexAmtCalculat, BSSI_EscalateEffective, BSSI_Dummy, DEX_ROW_ID FROM .B4603200 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603200L_2] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510200F_1] (@VENDORID_RS char(15), @ADRSCODE_RS char(15), @VENDORID_RE char(15), @ADRSCODE_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, ADRSCODE, MJW_Address_Type, MJW_Email1, MJW_Email_2, MJW_Season_Start_Date, MJW_Season_End_Date, MJW_Temp_Field, DEX_ROW_ID FROM .B0510200 ORDER BY VENDORID ASC, ADRSCODE ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, MJW_Address_Type, MJW_Email1, MJW_Email_2, MJW_Season_Start_Date, MJW_Season_End_Date, MJW_Temp_Field, DEX_ROW_ID FROM .B0510200 WHERE VENDORID = @VENDORID_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY VENDORID ASC, ADRSCODE ASC END ELSE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, MJW_Address_Type, MJW_Email1, MJW_Email_2, MJW_Season_Start_Date, MJW_Season_End_Date, MJW_Temp_Field, DEX_ROW_ID FROM .B0510200 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY VENDORID ASC, ADRSCODE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510200F_1] TO [DYNGRP]
GO

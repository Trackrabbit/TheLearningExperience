SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40302L_2] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @PRIMARYPOSSEAT_RS tinyint, @PayCode_RS char(7), @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @PRIMARYPOSSEAT_RE tinyint, @PayCode_RE char(7)) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, PayCode, Base_Step_Increased_On, BUDGETED, DEFPERMOPTION, PAYRTAMT, PYSTPTBLID, PRIMARYPOSSEAT, Step, Step_Effective_Date, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40302 ORDER BY PLANCODE DESC, JOBTITLE DESC, PRIMARYPOSSEAT DESC, PayCode DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, PayCode, Base_Step_Increased_On, BUDGETED, DEFPERMOPTION, PAYRTAMT, PYSTPTBLID, PRIMARYPOSSEAT, Step, Step_Effective_Date, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40302 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND PRIMARYPOSSEAT BETWEEN @PRIMARYPOSSEAT_RS AND @PRIMARYPOSSEAT_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, PRIMARYPOSSEAT DESC, PayCode DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, PayCode, Base_Step_Increased_On, BUDGETED, DEFPERMOPTION, PAYRTAMT, PYSTPTBLID, PRIMARYPOSSEAT, Step, Step_Effective_Date, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40302 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND PRIMARYPOSSEAT BETWEEN @PRIMARYPOSSEAT_RS AND @PRIMARYPOSSEAT_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, PRIMARYPOSSEAT DESC, PayCode DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40302L_2] TO [DYNGRP]
GO
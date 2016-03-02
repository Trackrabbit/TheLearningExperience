SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40305L_2] (@EXPIREDCB_RS tinyint, @PLANCODE_RS char(15), @JOBTITLE_RS char(7), @TEMPSEAT_RS tinyint, @SEAT_RS int, @SEQNUMBR_RS int, @EXPIREDCB_RE tinyint, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @TEMPSEAT_RE tinyint, @SEAT_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @EXPIREDCB_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 ORDER BY EXPIREDCB DESC, PLANCODE DESC, JOBTITLE DESC, TEMPSEAT DESC, SEAT DESC, SEQNUMBR DESC END ELSE IF @EXPIREDCB_RS = @EXPIREDCB_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 WHERE EXPIREDCB = @EXPIREDCB_RS AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY EXPIREDCB DESC, PLANCODE DESC, JOBTITLE DESC, TEMPSEAT DESC, SEAT DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 WHERE EXPIREDCB BETWEEN @EXPIREDCB_RS AND @EXPIREDCB_RE AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY EXPIREDCB DESC, PLANCODE DESC, JOBTITLE DESC, TEMPSEAT DESC, SEAT DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40305L_2] TO [DYNGRP]
GO

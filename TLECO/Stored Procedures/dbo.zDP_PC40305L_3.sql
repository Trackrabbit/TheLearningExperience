SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40305L_3] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEAT_RS int, @EMPLOYID_RS char(15), @STRTDATE_RS datetime, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEAT_RE int, @EMPLOYID_RE char(15), @STRTDATE_RE datetime) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, EMPLOYID DESC, STRTDATE DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, EMPLOYID DESC, STRTDATE DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE, DEX_ROW_ID FROM .PC40305 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, EMPLOYID DESC, STRTDATE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40305L_3] TO [DYNGRP]
GO
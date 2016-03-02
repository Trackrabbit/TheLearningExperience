SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40801L_1] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEAT_RS int, @SEQNUMBR_RS int, @PayCode_RS char(7), @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEAT_RE int, @SEQNUMBR_RE int, @PayCode_RE char(7)) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, SEQNUMBR DESC, PayCode DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, SEQNUMBR DESC, PayCode DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, SEQNUMBR DESC, PayCode DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40801L_1] TO [DYNGRP]
GO

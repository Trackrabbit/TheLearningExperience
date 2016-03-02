SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40801N_1] (@BS int, @PLANCODE char(15), @JOBTITLE char(7), @SEAT int, @SEQNUMBR int, @PayCode char(7), @PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEAT_RS int, @SEQNUMBR_RS int, @PayCode_RS char(7), @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEAT_RE int, @SEQNUMBR_RE int, @PayCode_RE char(7)) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 WHERE ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR = @SEQNUMBR AND PayCode > @PayCode OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR > @SEQNUMBR OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT > @SEAT OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, PayCode ASC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE AND ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR = @SEQNUMBR AND PayCode > @PayCode OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR > @SEQNUMBR OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT > @SEAT OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, PayCode ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date, DEX_ROW_ID FROM .PC40801 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND PayCode BETWEEN @PayCode_RS AND @PayCode_RE AND ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR = @SEQNUMBR AND PayCode > @PayCode OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT = @SEAT AND SEQNUMBR > @SEQNUMBR OR PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEAT > @SEAT OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, PayCode ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40801N_1] TO [DYNGRP]
GO

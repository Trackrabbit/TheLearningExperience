SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE011031F_1] (@EMPID_I_RS char(15), @INDEX1_RS smallint, @EMPID_I_RE char(15), @INDEX1_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, INDEX1, CALENDARSTART_I, ABSENCESTARTDATE_I, ABSENCEENDDATE_I, BNFBEGDT, BNFENDDT, ESTRETURNDATE_I, PHYPROVNOTIFIED_I, LEAVEAPPROVAL_I, BENEFITEXPIRE_I, IBENEFITFREQUENCY_I, IBENEFITAMOUNT_I, IBENEFITYEARMAX_I, CHECK1_I, HOURSWORKEDPERDAY_I, TYPEOFDAY_I, CHECK2_I, IDATE_I, OLDCALENDARSTARTFMLA, DEX_ROW_ID, COMMENTS_I FROM .BE011031 ORDER BY EMPID_I ASC, INDEX1 ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, INDEX1, CALENDARSTART_I, ABSENCESTARTDATE_I, ABSENCEENDDATE_I, BNFBEGDT, BNFENDDT, ESTRETURNDATE_I, PHYPROVNOTIFIED_I, LEAVEAPPROVAL_I, BENEFITEXPIRE_I, IBENEFITFREQUENCY_I, IBENEFITAMOUNT_I, IBENEFITYEARMAX_I, CHECK1_I, HOURSWORKEDPERDAY_I, TYPEOFDAY_I, CHECK2_I, IDATE_I, OLDCALENDARSTARTFMLA, DEX_ROW_ID, COMMENTS_I FROM .BE011031 WHERE EMPID_I = @EMPID_I_RS AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY EMPID_I ASC, INDEX1 ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, INDEX1, CALENDARSTART_I, ABSENCESTARTDATE_I, ABSENCEENDDATE_I, BNFBEGDT, BNFENDDT, ESTRETURNDATE_I, PHYPROVNOTIFIED_I, LEAVEAPPROVAL_I, BENEFITEXPIRE_I, IBENEFITFREQUENCY_I, IBENEFITAMOUNT_I, IBENEFITYEARMAX_I, CHECK1_I, HOURSWORKEDPERDAY_I, TYPEOFDAY_I, CHECK2_I, IDATE_I, OLDCALENDARSTARTFMLA, DEX_ROW_ID, COMMENTS_I FROM .BE011031 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY EMPID_I ASC, INDEX1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE011031F_1] TO [DYNGRP]
GO

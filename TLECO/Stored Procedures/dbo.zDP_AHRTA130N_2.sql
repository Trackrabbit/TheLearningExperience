SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA130N_2] (@BS int, @TIMECODE_I char(7), @EMPID_I char(15), @TIMECODE_I_RS char(7), @EMPID_I_RS char(15), @TIMECODE_I_RE char(7), @EMPID_I_RE char(15)) AS  set nocount on IF @TIMECODE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, INACTIVE, TIMETYPE_I, PAYPEROD, PRNAVAILTMEPYRL, WRNTIMEFALLSBLWZERO, SENIORITY_I, SENIORITYDATE_I, NEXTACCRUALDATE_I, NEXTSENIORITYDATE_I, ACCRUETIMEBENEFITS_I, WCID_I, TRXCOUNT_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, HOURSACCYTD_I, HOURSCARRIEDOVER_I, HOURSPERYEAR_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA130 WHERE ( TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC END ELSE IF @TIMECODE_I_RS = @TIMECODE_I_RE BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, INACTIVE, TIMETYPE_I, PAYPEROD, PRNAVAILTMEPYRL, WRNTIMEFALLSBLWZERO, SENIORITY_I, SENIORITYDATE_I, NEXTACCRUALDATE_I, NEXTSENIORITYDATE_I, ACCRUETIMEBENEFITS_I, WCID_I, TRXCOUNT_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, HOURSACCYTD_I, HOURSCARRIEDOVER_I, HOURSPERYEAR_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA130 WHERE TIMECODE_I = @TIMECODE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, INACTIVE, TIMETYPE_I, PAYPEROD, PRNAVAILTMEPYRL, WRNTIMEFALLSBLWZERO, SENIORITY_I, SENIORITYDATE_I, NEXTACCRUALDATE_I, NEXTSENIORITYDATE_I, ACCRUETIMEBENEFITS_I, WCID_I, TRXCOUNT_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, HOURSACCYTD_I, HOURSCARRIEDOVER_I, HOURSPERYEAR_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA130 WHERE TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA130N_2] TO [DYNGRP]
GO

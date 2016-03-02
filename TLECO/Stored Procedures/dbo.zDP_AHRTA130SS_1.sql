SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA130SS_1] (@EMPID_I char(15), @TIMECODE_I char(7)) AS  set nocount on SELECT TOP 1  EMPID_I, TIMECODE_I, INACTIVE, TIMETYPE_I, PAYPEROD, PRNAVAILTMEPYRL, WRNTIMEFALLSBLWZERO, SENIORITY_I, SENIORITYDATE_I, NEXTACCRUALDATE_I, NEXTSENIORITYDATE_I, ACCRUETIMEBENEFITS_I, WCID_I, TRXCOUNT_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, HOURSACCYTD_I, HOURSCARRIEDOVER_I, HOURSPERYEAR_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA130 WHERE EMPID_I = @EMPID_I AND TIMECODE_I = @TIMECODE_I ORDER BY EMPID_I ASC, TIMECODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA130SS_1] TO [DYNGRP]
GO
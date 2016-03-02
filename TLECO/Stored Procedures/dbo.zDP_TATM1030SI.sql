SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATM1030SI] (@EMPID_I char(15), @TIMECODE_I char(7), @INACTIVE tinyint, @TIMETYPE_I smallint, @PAYPEROD smallint, @PRNAVAILTMEPYRL tinyint, @WRNTIMEFALLSBLWZERO tinyint, @SENIORITY_I char(7), @SENIORITYDATE_I datetime, @NEXTACCRUALDATE_I datetime, @NEXTSENIORITYDATE_I datetime, @ACCRUETIMEBENEFITS_I tinyint, @WCID_I char(11), @TRXCOUNT_I smallint, @HOURS_I int, @HOURSAVAILABLE_I int, @DAYSWRDK int, @WKSWRKD int, @HOURSACCYTD_I int, @HOURSCARRIEDOVER_I int, @HOURSPERYEAR_I int, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TATM1030 (EMPID_I, TIMECODE_I, INACTIVE, TIMETYPE_I, PAYPEROD, PRNAVAILTMEPYRL, WRNTIMEFALLSBLWZERO, SENIORITY_I, SENIORITYDATE_I, NEXTACCRUALDATE_I, NEXTSENIORITYDATE_I, ACCRUETIMEBENEFITS_I, WCID_I, TRXCOUNT_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, HOURSACCYTD_I, HOURSCARRIEDOVER_I, HOURSPERYEAR_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I) VALUES ( @EMPID_I, @TIMECODE_I, @INACTIVE, @TIMETYPE_I, @PAYPEROD, @PRNAVAILTMEPYRL, @WRNTIMEFALLSBLWZERO, @SENIORITY_I, @SENIORITYDATE_I, @NEXTACCRUALDATE_I, @NEXTSENIORITYDATE_I, @ACCRUETIMEBENEFITS_I, @WCID_I, @TRXCOUNT_I, @HOURS_I, @HOURSAVAILABLE_I, @DAYSWRDK, @WKSWRKD, @HOURSACCYTD_I, @HOURSCARRIEDOVER_I, @HOURSPERYEAR_I, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATM1030SI] TO [DYNGRP]
GO

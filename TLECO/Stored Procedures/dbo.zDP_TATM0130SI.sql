SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATM0130SI] (@TIMECODE_I char(7), @DSCRIPTN char(31), @INACTIVE tinyint, @TIMETYPE_I smallint, @PAYRCORD char(7), @PAYTYPE smallint, @SENIORITY_I char(7), @OVERTIMECODE_I char(7), @HOURSOVERTIME_I int, @BSPAYRCD char(7), @PAYPEROD smallint, @WRNTIMEFALLSBLWZERO tinyint, @ACCRUETIMEBENEFITS_I tinyint, @GBTABEN smallint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TATM0130 (TIMECODE_I, DSCRIPTN, INACTIVE, TIMETYPE_I, PAYRCORD, PAYTYPE, SENIORITY_I, OVERTIMECODE_I, HOURSOVERTIME_I, BSPAYRCD, PAYPEROD, WRNTIMEFALLSBLWZERO, ACCRUETIMEBENEFITS_I, GBTABEN, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I) VALUES ( @TIMECODE_I, @DSCRIPTN, @INACTIVE, @TIMETYPE_I, @PAYRCORD, @PAYTYPE, @SENIORITY_I, @OVERTIMECODE_I, @HOURSOVERTIME_I, @BSPAYRCD, @PAYPEROD, @WRNTIMEFALLSBLWZERO, @ACCRUETIMEBENEFITS_I, @GBTABEN, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATM0130SI] TO [DYNGRP]
GO
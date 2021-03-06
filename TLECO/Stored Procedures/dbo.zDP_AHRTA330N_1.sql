SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA330N_1] (@BS int, @TRX_I int, @TRX_I_RS int, @TRX_I_RE int) AS  set nocount on IF @TRX_I_RS IS NULL BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE ( TRX_I > @TRX_I ) ORDER BY TRX_I ASC END ELSE IF @TRX_I_RS = @TRX_I_RE BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE TRX_I = @TRX_I_RS AND ( TRX_I > @TRX_I ) ORDER BY TRX_I ASC END ELSE BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE TRX_I BETWEEN @TRX_I_RS AND @TRX_I_RE AND ( TRX_I > @TRX_I ) ORDER BY TRX_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA330N_1] TO [DYNGRP]
GO

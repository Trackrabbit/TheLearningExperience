SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA330SS_4] (@EMPID_I char(15), @TRX_I int) AS  set nocount on SELECT TOP 1  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE EMPID_I = @EMPID_I AND TRX_I = @TRX_I ORDER BY EMPID_I ASC, TRX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA330SS_4] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATX1030UN_3] (@BS int, @TIMECODE_I char(7), @EMPID_I char(15), @TRXDATE datetime, @TIMECODE_I_RS char(7), @EMPID_I_RS char(15), @TRXDATE_RS datetime, @TIMECODE_I_RE char(7), @EMPID_I_RE char(15), @TRXDATE_RE datetime) AS  set nocount on IF @TIMECODE_I_RS IS NULL BEGIN SELECT TOP 25  TRX_I, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATX1030 WHERE ( TIMECODE_I = @TIMECODE_I AND EMPID_I = @EMPID_I AND TRXDATE > @TRXDATE OR TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC, TRXDATE ASC, DEX_ROW_ID ASC END ELSE IF @TIMECODE_I_RS = @TIMECODE_I_RE BEGIN SELECT TOP 25  TRX_I, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATX1030 WHERE TIMECODE_I = @TIMECODE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ( TIMECODE_I = @TIMECODE_I AND EMPID_I = @EMPID_I AND TRXDATE > @TRXDATE OR TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC, TRXDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRX_I, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATX1030 WHERE TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ( TIMECODE_I = @TIMECODE_I AND EMPID_I = @EMPID_I AND TRXDATE > @TRXDATE OR TIMECODE_I = @TIMECODE_I AND EMPID_I > @EMPID_I OR TIMECODE_I > @TIMECODE_I ) ORDER BY TIMECODE_I ASC, EMPID_I ASC, TRXDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATX1030UN_3] TO [DYNGRP]
GO

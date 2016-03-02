SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA330N_8] (@BS int, @ATTTRXSTATUS smallint, @CMRECNUM numeric(19,5), @DEX_ROW_ID int, @ATTTRXSTATUS_RS smallint, @CMRECNUM_RS numeric(19,5), @ATTTRXSTATUS_RE smallint, @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @ATTTRXSTATUS_RS IS NULL BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE ( ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM = @CMRECNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM > @CMRECNUM OR ATTTRXSTATUS > @ATTTRXSTATUS ) ORDER BY ATTTRXSTATUS ASC, CMRECNUM ASC, DEX_ROW_ID ASC END ELSE IF @ATTTRXSTATUS_RS = @ATTTRXSTATUS_RE BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE ATTTRXSTATUS = @ATTTRXSTATUS_RS AND CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE AND ( ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM = @CMRECNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM > @CMRECNUM OR ATTTRXSTATUS > @ATTTRXSTATUS ) ORDER BY ATTTRXSTATUS ASC, CMRECNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRX_I, GBTATYPE, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, TRXERROR_I, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRTA330 WHERE ATTTRXSTATUS BETWEEN @ATTTRXSTATUS_RS AND @ATTTRXSTATUS_RE AND CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE AND ( ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM = @CMRECNUM AND DEX_ROW_ID > @DEX_ROW_ID OR ATTTRXSTATUS = @ATTTRXSTATUS AND CMRECNUM > @CMRECNUM OR ATTTRXSTATUS > @ATTTRXSTATUS ) ORDER BY ATTTRXSTATUS ASC, CMRECNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA330N_8] TO [DYNGRP]
GO

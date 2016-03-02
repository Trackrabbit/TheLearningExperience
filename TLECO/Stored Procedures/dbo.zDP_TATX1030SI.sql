SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATX1030SI] (@TRX_I int, @EMPID_I char(15), @JOBTITLE char(7), @DEPRTMNT char(7), @DIVISIONCODE_I char(7), @TIMECODE_I char(7), @TRXDATE datetime, @TRXENDDT datetime, @HOURS_I int, @HOURSAVAILABLE_I int, @DAYSWRDK int, @WKSWRKD int, @ACCFLG tinyint, @ACCRUETIMEBENEFITS_I tinyint, @POSTED tinyint, @ATTTYP char(31), @ATTRSN char(31), @ATTTRXSTATUS smallint, @BACHNUMB char(15), @COMPTRNM int, @CMRECNUM numeric(19,5), @PAYRCORD char(7), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @CHANGETIME_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TATX1030 (TRX_I, EMPID_I, JOBTITLE, DEPRTMNT, DIVISIONCODE_I, TIMECODE_I, TRXDATE, TRXENDDT, HOURS_I, HOURSAVAILABLE_I, DAYSWRDK, WKSWRKD, ACCFLG, ACCRUETIMEBENEFITS_I, POSTED, ATTTYP, ATTRSN, ATTTRXSTATUS, BACHNUMB, COMPTRNM, CMRECNUM, PAYRCORD, CHANGEBY_I, CHANGEDATE_I, CHANGETIME_I, NOTESINDEX_I) VALUES ( @TRX_I, @EMPID_I, @JOBTITLE, @DEPRTMNT, @DIVISIONCODE_I, @TIMECODE_I, @TRXDATE, @TRXENDDT, @HOURS_I, @HOURSAVAILABLE_I, @DAYSWRDK, @WKSWRKD, @ACCFLG, @ACCRUETIMEBENEFITS_I, @POSTED, @ATTTYP, @ATTRSN, @ATTTRXSTATUS, @BACHNUMB, @COMPTRNM, @CMRECNUM, @PAYRCORD, @CHANGEBY_I, @CHANGEDATE_I, @CHANGETIME_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATX1030SI] TO [DYNGRP]
GO

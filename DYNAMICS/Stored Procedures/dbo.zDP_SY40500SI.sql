SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40500SI] (@BARULEID int, @DSCRIPTN char(31), @BUSALRTID char(15), @EMAILMSG char(255), @LSTRWCHKD int, @INCLDRSLTS tinyint, @DBNAME char(11), @CMPANYID smallint, @FREQTYPE smallint, @FREQINT smallint, @FRQSUBTYP smallint, @FRQSUBINT smallint, @FRQRELINT smallint, @FRQRCINT smallint, @STRTTIME datetime, @ENDTIME datetime, @STRTDATE datetime, @ENDDATE datetime, @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @ENABLED tinyint, @KEEPHIST tinyint, @NMBRTIME smallint, @NOTEINDX numeric(19,5), @SCHEDTXT char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY40500 (BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT) VALUES ( @BARULEID, @DSCRIPTN, @BUSALRTID, @EMAILMSG, @LSTRWCHKD, @INCLDRSLTS, @DBNAME, @CMPANYID, @FREQTYPE, @FREQINT, @FRQSUBTYP, @FRQSUBINT, @FRQRELINT, @FRQRCINT, @STRTTIME, @ENDTIME, @STRTDATE, @ENDDATE, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID, @ENABLED, @KEEPHIST, @NMBRTIME, @NOTEINDX, @SCHEDTXT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40500SI] TO [DYNGRP]
GO

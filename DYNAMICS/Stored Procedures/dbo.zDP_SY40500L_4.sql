SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40500L_4] (@DBNAME_RS char(11), @BUSALRTID_RS char(15), @DBNAME_RE char(11), @BUSALRTID_RE char(15)) AS  set nocount on IF @DBNAME_RS IS NULL BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SY40500 ORDER BY DBNAME DESC, BUSALRTID DESC END ELSE IF @DBNAME_RS = @DBNAME_RE BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SY40500 WHERE DBNAME = @DBNAME_RS AND BUSALRTID BETWEEN @BUSALRTID_RS AND @BUSALRTID_RE ORDER BY DBNAME DESC, BUSALRTID DESC END ELSE BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SY40500 WHERE DBNAME BETWEEN @DBNAME_RS AND @DBNAME_RE AND BUSALRTID BETWEEN @BUSALRTID_RS AND @BUSALRTID_RE ORDER BY DBNAME DESC, BUSALRTID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40500L_4] TO [DYNGRP]
GO

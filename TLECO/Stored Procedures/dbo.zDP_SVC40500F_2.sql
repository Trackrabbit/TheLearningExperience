SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC40500F_2] (@BUSALRTID_RS char(15), @DBNAME_RS char(11), @BUSALRTID_RE char(15), @DBNAME_RE char(11)) AS  set nocount on IF @BUSALRTID_RS IS NULL BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SVC40500 ORDER BY BUSALRTID ASC, DBNAME ASC END ELSE IF @BUSALRTID_RS = @BUSALRTID_RE BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SVC40500 WHERE BUSALRTID = @BUSALRTID_RS AND DBNAME BETWEEN @DBNAME_RS AND @DBNAME_RE ORDER BY BUSALRTID ASC, DBNAME ASC END ELSE BEGIN SELECT TOP 25  BARULEID, DSCRIPTN, BUSALRTID, EMAILMSG, LSTRWCHKD, INCLDRSLTS, DBNAME, CMPANYID, FREQTYPE, FREQINT, FRQSUBTYP, FRQSUBINT, FRQRELINT, FRQRCINT, STRTTIME, ENDTIME, STRTDATE, ENDDATE, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, ENABLED, KEEPHIST, NMBRTIME, NOTEINDX, SCHEDTXT, DEX_ROW_ID FROM .SVC40500 WHERE BUSALRTID BETWEEN @BUSALRTID_RS AND @BUSALRTID_RE AND DBNAME BETWEEN @DBNAME_RS AND @DBNAME_RE ORDER BY BUSALRTID ASC, DBNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC40500F_2] TO [DYNGRP]
GO

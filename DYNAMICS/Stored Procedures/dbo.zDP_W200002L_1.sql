SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200002L_1] (@RPTNGYR_RS smallint, @CMPNYNAM_RS char(65), @EMPLTYPE_RS char(7), @RPTNGYR_RE smallint, @CMPNYNAM_RE char(65), @EMPLTYPE_RE char(7)) AS  set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, CMPNYNAM, EMPLTYPE, WAGEFILE, DATE1, TIME1, EPRIDNBR, INCLUDCO, EMPLRADD, EMPLRCTY, STATECD, ZIPCODE, PHONNAME, CMPANYID, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTAX, EMPMEDWG, EMPMEDTX, EMPSSTIP, DEX_ROW_ID FROM .W200002 ORDER BY RPTNGYR DESC, CMPNYNAM DESC, EMPLTYPE DESC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, CMPNYNAM, EMPLTYPE, WAGEFILE, DATE1, TIME1, EPRIDNBR, INCLUDCO, EMPLRADD, EMPLRCTY, STATECD, ZIPCODE, PHONNAME, CMPANYID, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTAX, EMPMEDWG, EMPMEDTX, EMPSSTIP, DEX_ROW_ID FROM .W200002 WHERE RPTNGYR = @RPTNGYR_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND EMPLTYPE BETWEEN @EMPLTYPE_RS AND @EMPLTYPE_RE ORDER BY RPTNGYR DESC, CMPNYNAM DESC, EMPLTYPE DESC END ELSE BEGIN SELECT TOP 25  RPTNGYR, CMPNYNAM, EMPLTYPE, WAGEFILE, DATE1, TIME1, EPRIDNBR, INCLUDCO, EMPLRADD, EMPLRCTY, STATECD, ZIPCODE, PHONNAME, CMPANYID, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTAX, EMPMEDWG, EMPMEDTX, EMPSSTIP, DEX_ROW_ID FROM .W200002 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND EMPLTYPE BETWEEN @EMPLTYPE_RS AND @EMPLTYPE_RE ORDER BY RPTNGYR DESC, CMPNYNAM DESC, EMPLTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200002L_1] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT00101F_5] (@ESTSTARTDATE_RS datetime, @PROJNAME_RS char(21), @ESTSTARTDATE_RE datetime, @PROJNAME_RE char(21)) AS  set nocount on IF @ESTSTARTDATE_RS IS NULL BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 ORDER BY ESTSTARTDATE ASC, PROJNAME ASC END ELSE IF @ESTSTARTDATE_RS = @ESTSTARTDATE_RE BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE ESTSTARTDATE = @ESTSTARTDATE_RS AND PROJNAME BETWEEN @PROJNAME_RS AND @PROJNAME_RE ORDER BY ESTSTARTDATE ASC, PROJNAME ASC END ELSE BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE ESTSTARTDATE BETWEEN @ESTSTARTDATE_RS AND @ESTSTARTDATE_RE AND PROJNAME BETWEEN @PROJNAME_RS AND @PROJNAME_RE ORDER BY ESTSTARTDATE ASC, PROJNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT00101F_5] TO [DYNGRP]
GO

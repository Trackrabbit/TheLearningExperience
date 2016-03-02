SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT00101N_1] (@BS int, @PROJNAME char(21), @PROJNAME_RS char(21), @PROJNAME_RE char(21)) AS  set nocount on IF @PROJNAME_RS IS NULL BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE ( PROJNAME > @PROJNAME ) ORDER BY PROJNAME ASC END ELSE IF @PROJNAME_RS = @PROJNAME_RE BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE PROJNAME = @PROJNAME_RS AND ( PROJNAME > @PROJNAME ) ORDER BY PROJNAME ASC END ELSE BEGIN SELECT TOP 25  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE PROJNAME BETWEEN @PROJNAME_RS AND @PROJNAME_RE AND ( PROJNAME > @PROJNAME ) ORDER BY PROJNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT00101N_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT00101SS_5] (@ESTSTARTDATE datetime, @PROJNAME char(21)) AS  set nocount on SELECT TOP 1  PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .PT00101 WHERE ESTSTARTDATE = @ESTSTARTDATE AND PROJNAME = @PROJNAME ORDER BY ESTSTARTDATE ASC, PROJNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT00101SS_5] TO [DYNGRP]
GO

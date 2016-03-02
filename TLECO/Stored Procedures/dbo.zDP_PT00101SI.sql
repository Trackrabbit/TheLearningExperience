SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT00101SI] (@PROJNAME char(21), @PROJDESC char(51), @PROJMGR char(31), @PROJTYPE char(31), @ESTSTARTDATE datetime, @ESTCOMPDATE datetime, @ACTSTARTDATE datetime, @ACTCOMPDATE datetime, @PROJSTATUS smallint, @CLOSEDTOBILL tinyint, @CLOSEDTOCOST tinyint, @CUSTNMBR char(15), @PRBTADCD char(15), @ADRSCODE char(15), @ADDRESS1 char(61), @ADDRESS2 char(61), @CITY char(35), @STATE char(29), @ZIP char(11), @ESTPREFER smallint, @ESTMATCOST numeric(19,5), @ESTLABORCOST numeric(19,5), @ESTMISCCOST numeric(19,5), @ESTMATREV numeric(19,5), @ESTLABORREV numeric(19,5), @ESTMISCREV numeric(19,5), @ACTMATCOST numeric(19,5), @ACTLABORCOST numeric(19,5), @ACTMISCCOST numeric(19,5), @ACTMATREV numeric(19,5), @ACTLABORREV numeric(19,5), @ACTMISCREV numeric(19,5), @USERDEF1 char(21), @USERDEF2 char(21), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PT00101 (PROJNAME, PROJDESC, PROJMGR, PROJTYPE, ESTSTARTDATE, ESTCOMPDATE, ACTSTARTDATE, ACTCOMPDATE, PROJSTATUS, CLOSEDTOBILL, CLOSEDTOCOST, CUSTNMBR, PRBTADCD, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, ESTPREFER, ESTMATCOST, ESTLABORCOST, ESTMISCCOST, ESTMATREV, ESTLABORREV, ESTMISCREV, ACTMATCOST, ACTLABORCOST, ACTMISCCOST, ACTMATREV, ACTLABORREV, ACTMISCREV, USERDEF1, USERDEF2, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX) VALUES ( @PROJNAME, @PROJDESC, @PROJMGR, @PROJTYPE, @ESTSTARTDATE, @ESTCOMPDATE, @ACTSTARTDATE, @ACTCOMPDATE, @PROJSTATUS, @CLOSEDTOBILL, @CLOSEDTOCOST, @CUSTNMBR, @PRBTADCD, @ADRSCODE, @ADDRESS1, @ADDRESS2, @CITY, @STATE, @ZIP, @ESTPREFER, @ESTMATCOST, @ESTLABORCOST, @ESTMISCCOST, @ESTMATREV, @ESTLABORREV, @ESTMISCREV, @ACTMATCOST, @ACTLABORCOST, @ACTMISCCOST, @ACTMATREV, @ACTLABORREV, @ACTMISCREV, @USERDEF1, @USERDEF2, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT00101SI] TO [DYNGRP]
GO
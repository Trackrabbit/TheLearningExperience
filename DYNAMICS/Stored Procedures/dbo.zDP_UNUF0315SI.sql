SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UNUF0315SI] (@REPORTOPTION_I char(21), @REPORTINDEX_I numeric(19,5), @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RNGE char(133), @SORTBYNUMBER_I smallint, @SORTOPTION_I smallint, @FROMFIRSTNAME_I char(15), @FROMLASTNAME_I char(21), @TOFIRSTNAME_I char(15), @TOLASTNAME_I char(21), @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @LOCCODE_I char(15), @FROMEMPLOYEEID_I char(15), @TOEMPLOYEEID_I char(15), @FROMDATE_I datetime, @TODATE_I datetime, @ENTRYNUMBER_I smallint, @SSN_I char(15), @SUPERVISORCODE_I char(7), @INCINEMP tinyint, @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UNUF0315 (REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMDATE_I, TODATE_I, ENTRYNUMBER_I, SSN_I, SUPERVISORCODE_I, INCINEMP, RESID) VALUES ( @REPORTOPTION_I, @REPORTINDEX_I, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RNGE, @SORTBYNUMBER_I, @SORTOPTION_I, @FROMFIRSTNAME_I, @FROMLASTNAME_I, @TOFIRSTNAME_I, @TOLASTNAME_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @POSITIONCODE_I, @LOCCODE_I, @FROMEMPLOYEEID_I, @TOEMPLOYEEID_I, @FROMDATE_I, @TODATE_I, @ENTRYNUMBER_I, @SSN_I, @SUPERVISORCODE_I, @INCINEMP, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UNUF0315SI] TO [DYNGRP]
GO

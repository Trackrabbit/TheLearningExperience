SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_APUF0132SI] (@REPORTOPTION_I char(21), @REPORTINDEX_I numeric(19,5), @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RNGE char(133), @SORTOPTION_I smallint, @SORTBYNUMBER_I smallint, @FROMAPPLYDATE_I datetime, @TOAPPLYDATE_I datetime, @FROMISSN_I char(15), @TOISSN_I char(15), @FROMFIRSTNAME_I char(15), @FROMLASTNAME_I char(21), @TOFIRSTNAME_I char(15), @TOLASTNAME_I char(21), @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @REQUISITIONNUMBER_I int, @COLORSTRING_I char(7), @STATUS0_I smallint, @FROMINTERVIEWNAME_I char(21), @TOINTERVIEWNAME_I char(21), @REFSOURCEDDL_I smallint, @TEST_I char(31), @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .APUF0132 (REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTOPTION_I, SORTBYNUMBER_I, FROMAPPLYDATE_I, TOAPPLYDATE_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, COLORSTRING_I, STATUS0_I, FROMINTERVIEWNAME_I, TOINTERVIEWNAME_I, REFSOURCEDDL_I, TEST_I, RESID) VALUES ( @REPORTOPTION_I, @REPORTINDEX_I, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RNGE, @SORTOPTION_I, @SORTBYNUMBER_I, @FROMAPPLYDATE_I, @TOAPPLYDATE_I, @FROMISSN_I, @TOISSN_I, @FROMFIRSTNAME_I, @FROMLASTNAME_I, @TOFIRSTNAME_I, @TOLASTNAME_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @POSITIONCODE_I, @REQUISITIONNUMBER_I, @COLORSTRING_I, @STATUS0_I, @FROMINTERVIEWNAME_I, @TOINTERVIEWNAME_I, @REFSOURCEDDL_I, @TEST_I, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_APUF0132SI] TO [DYNGRP]
GO
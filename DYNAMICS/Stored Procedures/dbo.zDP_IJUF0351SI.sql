SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_IJUF0351SI] (@REPORTOPTION_I char(21), @REPORTINDEX_I numeric(19,5), @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RNGE char(133), @SORTBYNUMBER_I smallint, @SORTOPTION_I smallint, @FROMDATE_I datetime, @TODATE_I datetime, @FROMINJURYNUMBER_I char(11), @TOINJURYNUMBER_I char(11), @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @INCINEMP tinyint, @CONFIDENTIAL_I tinyint, @YEAR1 smallint, @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IJUF0351 (REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMDATE_I, TODATE_I, FROMINJURYNUMBER_I, TOINJURYNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, INCINEMP, CONFIDENTIAL_I, YEAR1, RESID) VALUES ( @REPORTOPTION_I, @REPORTINDEX_I, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RNGE, @SORTBYNUMBER_I, @SORTOPTION_I, @FROMDATE_I, @TODATE_I, @FROMINJURYNUMBER_I, @TOINJURYNUMBER_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @INCINEMP, @CONFIDENTIAL_I, @YEAR1, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IJUF0351SI] TO [DYNGRP]
GO
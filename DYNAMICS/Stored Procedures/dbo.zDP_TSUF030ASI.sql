SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_TSUF030ASI] (@REPORTOPTION_I char(21), @REPORTINDEX_I numeric(19,5), @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RNGE char(133), @SORTBYNUMBER_I smallint, @SORTOPTION_I smallint, @FROMFIRSTNAME_I char(15), @FROMLASTNAME_I char(21), @TOFIRSTNAME_I char(15), @TOLASTNAME_I char(21), @FROMEMPLOYEEID_I char(15), @TOEMPLOYEEID_I char(15), @FROMISSN_I char(15), @TOISSN_I char(15), @REQUISITIONNUMBER_I int, @FROMTESTCODE_I char(7), @TOTESTCODE_I char(7), @INCINEMP tinyint, @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TSUF030A (REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMISSN_I, TOISSN_I, REQUISITIONNUMBER_I, FROMTESTCODE_I, TOTESTCODE_I, INCINEMP, RESID) VALUES ( @REPORTOPTION_I, @REPORTINDEX_I, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RNGE, @SORTBYNUMBER_I, @SORTOPTION_I, @FROMFIRSTNAME_I, @FROMLASTNAME_I, @TOFIRSTNAME_I, @TOLASTNAME_I, @FROMEMPLOYEEID_I, @TOEMPLOYEEID_I, @FROMISSN_I, @TOISSN_I, @REQUISITIONNUMBER_I, @FROMTESTCODE_I, @TOTESTCODE_I, @INCINEMP, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TSUF030ASI] TO [DYNGRP]
GO

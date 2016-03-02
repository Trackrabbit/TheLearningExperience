SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PRUF0131SI] (@REPORTOPTION_I char(21), @REPORTINDEX_I numeric(19,5), @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RNGE char(133), @SORTBYNUMBER_I smallint, @SORTBY_I char(31), @SORTOPTION_I smallint, @FROMEMPLOYEEID_I char(15), @TOEMPLOYEEID_I char(15), @FROMITEMNUM_I char(31), @TOITEMNUM_I char(31), @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PRUF0131 (REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID) VALUES ( @REPORTOPTION_I, @REPORTINDEX_I, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RNGE, @SORTBYNUMBER_I, @SORTBY_I, @SORTOPTION_I, @FROMEMPLOYEEID_I, @TOEMPLOYEEID_I, @FROMITEMNUM_I, @TOITEMNUM_I, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PRUF0131SI] TO [DYNGRP]
GO
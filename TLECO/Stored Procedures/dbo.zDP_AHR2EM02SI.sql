SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2EM02SI] (@EMPID_I char(15), @EFFECTIVEDATE_I datetime, @COMPANY_I char(65), @DIVISION_I char(31), @DEPARTMENTNAME_I char(31), @POSITION_I char(31), @EMPLOYMENTTYPE smallint, @HRSTATUS smallint, @SEPARATIONREASON_I smallint, @SHFTCODE char(7), @RSNEMPIN char(31), @SUPERVISOR char(31), @LOCATION_I char(31), @CHANGEREASON_I char(31), @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @SEQNUMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2EM02 (EMPID_I, EFFECTIVEDATE_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, POSITION_I, EMPLOYMENTTYPE, HRSTATUS, SEPARATIONREASON_I, SHFTCODE, RSNEMPIN, SUPERVISOR, LOCATION_I, CHANGEREASON_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, SEQNUMBR) VALUES ( @EMPID_I, @EFFECTIVEDATE_I, @COMPANY_I, @DIVISION_I, @DEPARTMENTNAME_I, @POSITION_I, @EMPLOYMENTTYPE, @HRSTATUS, @SEPARATIONREASON_I, @SHFTCODE, @RSNEMPIN, @SUPERVISOR, @LOCATION_I, @CHANGEREASON_I, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I, @SEQNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2EM02SI] TO [DYNGRP]
GO

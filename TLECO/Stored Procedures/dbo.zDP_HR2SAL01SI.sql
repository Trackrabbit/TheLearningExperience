SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2SAL01SI] (@EMPID_I char(15), @EFFECTIVEDATE_I datetime, @WAGE_I numeric(19,5), @COMPENSATIONPERIOD_I smallint, @CHANGEREASON_I char(31), @SHFTPREM numeric(19,5), @ANNUALSALARY_I numeric(19,5), @PTHOURS_I numeric(19,5), @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2SAL01 (EMPID_I, EFFECTIVEDATE_I, WAGE_I, COMPENSATIONPERIOD_I, CHANGEREASON_I, SHFTPREM, ANNUALSALARY_I, PTHOURS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I) VALUES ( @EMPID_I, @EFFECTIVEDATE_I, @WAGE_I, @COMPENSATIONPERIOD_I, @CHANGEREASON_I, @SHFTPREM, @ANNUALSALARY_I, @PTHOURS_I, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SAL01SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2OFF02SI] (@APPLICANTNUMBER_I numeric(19,5), @IINDEX_I smallint, @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @HIREDATE_I datetime, @DATEDUE_I datetime, @SHFTCODE char(7), @SALARYHIGH_I numeric(19,5), @COMPENSATIONPERIOD_I smallint, @MANAGER_I char(31), @DSCRIPTN char(31), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2OFF02 (APPLICANTNUMBER_I, IINDEX_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, HIREDATE_I, DATEDUE_I, SHFTCODE, SALARYHIGH_I, COMPENSATIONPERIOD_I, MANAGER_I, DSCRIPTN, CHANGEBY_I, CHANGEDATE_I) VALUES ( @APPLICANTNUMBER_I, @IINDEX_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @POSITIONCODE_I, @HIREDATE_I, @DATEDUE_I, @SHFTCODE, @SALARYHIGH_I, @COMPENSATIONPERIOD_I, @MANAGER_I, @DSCRIPTN, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2OFF02SI] TO [DYNGRP]
GO

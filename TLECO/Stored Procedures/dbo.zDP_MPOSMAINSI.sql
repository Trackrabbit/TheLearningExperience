SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MPOSMAINSI] (@EMPID_I char(15), @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @Effective_Date datetime, @SUPERVISORCODE_I char(7), @LOCCODE_I char(15), @FTE numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MPOSMAIN (EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I) VALUES ( @EMPID_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @POSITIONCODE_I, @Effective_Date, @SUPERVISORCODE_I, @LOCCODE_I, @FTE, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MPOSMAINSI] TO [DYNGRP]
GO

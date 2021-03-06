SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MPOSHISTSS_1] (@EMPID_I char(15), @CHANGEDATE_I datetime, @CHANGETIME_I datetime, @DIVISION_I char(31), @DEPARTMENTNAME_I char(31), @POSITION_I char(31)) AS  set nocount on SELECT TOP 1  EMPID_I, CHANGEDATE_I, CHANGETIME_I, CHANGEBY_I, POSITION_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, Effective_Date, SUPERVISOR, LOCATION_I, FTE, REVISIONLEVEL_I, DEX_ROW_ID FROM .MPOSHIST WHERE EMPID_I = @EMPID_I AND CHANGEDATE_I = @CHANGEDATE_I AND CHANGETIME_I = @CHANGETIME_I AND DIVISION_I = @DIVISION_I AND DEPARTMENTNAME_I = @DEPARTMENTNAME_I AND POSITION_I = @POSITION_I ORDER BY EMPID_I ASC, CHANGEDATE_I DESC, CHANGETIME_I DESC, DIVISION_I ASC, DEPARTMENTNAME_I ASC, POSITION_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MPOSHISTSS_1] TO [DYNGRP]
GO

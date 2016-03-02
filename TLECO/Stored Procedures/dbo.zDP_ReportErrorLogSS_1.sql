SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportErrorLogSS_1] (@USERID char(15), @PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51)) AS  set nocount on SELECT TOP 1  USERID, PRODID, RPTGRIND, Business_Desk_Report_Nam, Report_Option, ERMSGTXT, DEX_ROW_ID FROM .ReportErrorLog WHERE USERID = @USERID AND PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option ORDER BY USERID ASC, PRODID ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, Report_Option ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportErrorLogSS_1] TO [DYNGRP]
GO

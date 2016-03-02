SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportErrorLogSI] (@USERID char(15), @PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51), @ERMSGTXT char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportErrorLog (USERID, PRODID, RPTGRIND, Business_Desk_Report_Nam, Report_Option, ERMSGTXT) VALUES ( @USERID, @PRODID, @RPTGRIND, @Business_Desk_Report_Nam, @Report_Option, @ERMSGTXT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportErrorLogSI] TO [DYNGRP]
GO

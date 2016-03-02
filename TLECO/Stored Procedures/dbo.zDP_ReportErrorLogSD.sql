SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportErrorLogSD] (@USERID char(15), @PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ReportErrorLog WHERE USERID = @USERID AND PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ReportErrorLog WHERE USERID = @USERID AND PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportErrorLogSD] TO [DYNGRP]
GO

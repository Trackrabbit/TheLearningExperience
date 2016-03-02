SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportInternalNamesSD] (@PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @RPTGRNMS char(21), @Internal_Report_Name char(81), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ReportInternalNames WHERE PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name = @Internal_Report_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ReportInternalNames WHERE PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name = @Internal_Report_Name SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportInternalNamesSD] TO [DYNGRP]
GO

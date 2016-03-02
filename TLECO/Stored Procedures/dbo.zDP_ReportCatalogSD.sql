SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogSD] (@PRODNAME char(31), @Business_Desk_Report_Nam char(51), @Report_Option char(51), @Last_Date_Published datetime, @Last_Time_Published datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ReportCatalog WHERE PRODNAME = @PRODNAME AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ReportCatalog WHERE PRODNAME = @PRODNAME AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogSD] TO [DYNGRP]
GO

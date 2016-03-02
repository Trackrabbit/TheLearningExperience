SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogSI] (@PRODNAME char(31), @Business_Desk_Report_Nam char(51), @Report_Option char(51), @Business_Desk_Report_Typ char(5), @Report_URL char(255), @Last_Date_Published datetime, @Last_Time_Published datetime, @Report_Series smallint, @Reviewed tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportCatalog (PRODNAME, Business_Desk_Report_Nam, Report_Option, Business_Desk_Report_Typ, Report_URL, Last_Date_Published, Last_Time_Published, Report_Series, Reviewed) VALUES ( @PRODNAME, @Business_Desk_Report_Nam, @Report_Option, @Business_Desk_Report_Typ, @Report_URL, @Last_Date_Published, @Last_Time_Published, @Report_Series, @Reviewed) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogSI] TO [DYNGRP]
GO

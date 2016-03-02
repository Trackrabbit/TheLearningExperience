SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingSI] (@Business_Desk_Report_Nam char(51), @Report_Option char(51), @Last_Date_Published datetime, @DSCRIPTN char(31), @MKDTOPST tinyint, @Identity_Column int, @PRODNAME char(31), @ListviewIndex int, @RPTGRIND smallint, @PRODID smallint, @UserIDTime char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportCatalogPending (Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime) VALUES ( @Business_Desk_Report_Nam, @Report_Option, @Last_Date_Published, @DSCRIPTN, @MKDTOPST, @Identity_Column, @PRODNAME, @ListviewIndex, @RPTGRIND, @PRODID, @UserIDTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingSI] TO [DYNGRP]
GO

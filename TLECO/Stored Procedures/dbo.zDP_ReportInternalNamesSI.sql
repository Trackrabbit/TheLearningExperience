SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportInternalNamesSI] (@PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @RPTGRNMS char(21), @Internal_Report_Name char(81), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportInternalNames (PRODID, RPTGRIND, Business_Desk_Report_Nam, RPTGRNMS, Internal_Report_Name) VALUES ( @PRODID, @RPTGRIND, @Business_Desk_Report_Nam, @RPTGRNMS, @Internal_Report_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportInternalNamesSI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportInternalNamesSS_1] (@PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @RPTGRNMS char(21), @Internal_Report_Name char(81)) AS  set nocount on SELECT TOP 1  PRODID, RPTGRIND, Business_Desk_Report_Nam, RPTGRNMS, Internal_Report_Name, DEX_ROW_ID FROM .ReportInternalNames WHERE PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name = @Internal_Report_Name ORDER BY PRODID ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, Internal_Report_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportInternalNamesSS_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportNamesSS_1] (@Business_Desk_Report_Nam char(51), @RPTGRIND smallint, @PRODID smallint) AS  set nocount on SELECT TOP 1  PRODID, Business_Desk_Report_Nam, RPTGRIND, RTPACHIN, RTGRSBIN, DEX_ROW_ID FROM .ReportNames WHERE Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRIND = @RPTGRIND AND PRODID = @PRODID ORDER BY Business_Desk_Report_Nam ASC, RPTGRIND ASC, PRODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportNamesSS_1] TO [DYNGRP]
GO

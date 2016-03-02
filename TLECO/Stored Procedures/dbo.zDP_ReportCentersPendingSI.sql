SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingSI] (@Identity_Column int, @BPReport_Center char(31), @MKTOPROC tinyint, @RPTGRIND smallint, @PRODID smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51), @UserIDTime char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportCentersPending (Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime) VALUES ( @Identity_Column, @BPReport_Center, @MKTOPROC, @RPTGRIND, @PRODID, @Business_Desk_Report_Nam, @Report_Option, @UserIDTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingSI] TO [DYNGRP]
GO

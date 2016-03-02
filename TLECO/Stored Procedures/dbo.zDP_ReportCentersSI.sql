SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersSI] (@Business_Desk_Report_Nam char(51), @Report_Option char(51), @PRODNAME char(31), @BPReport_Center char(31), @MKTOPROC tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportCenters (Business_Desk_Report_Nam, Report_Option, PRODNAME, BPReport_Center, MKTOPROC) VALUES ( @Business_Desk_Report_Nam, @Report_Option, @PRODNAME, @BPReport_Center, @MKTOPROC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersSI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesSI] (@Business_Desk_Report_Nam char(51), @PRODNAME char(31), @Report_Option char(51), @BP_Role char(51), @MKTOPROC tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportRoles (Business_Desk_Report_Nam, PRODNAME, Report_Option, BP_Role, MKTOPROC) VALUES ( @Business_Desk_Report_Nam, @PRODNAME, @Report_Option, @BP_Role, @MKTOPROC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesSI] TO [DYNGRP]
GO

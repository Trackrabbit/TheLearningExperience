SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingSI] (@Identity_Column int, @BP_GUID char(41), @BP_Role char(51), @MKTOPROC tinyint, @Business_Desk_Report_Nam char(51), @PRODID smallint, @Report_Option char(51), @RPTGRIND smallint, @UserIDTime char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportRolesPending (Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime) VALUES ( @Identity_Column, @BP_GUID, @BP_Role, @MKTOPROC, @Business_Desk_Report_Nam, @PRODID, @Report_Option, @RPTGRIND, @UserIDTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingSI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportPublishersSI] (@USERID char(15), @PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportPublishers (USERID, PRODID, RPTGRIND, Business_Desk_Report_Nam, Report_Option) VALUES ( @USERID, @PRODID, @RPTGRIND, @Business_Desk_Report_Nam, @Report_Option) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportPublishersSI] TO [DYNGRP]
GO

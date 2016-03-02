SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportNamesSI] (@PRODID smallint, @Business_Desk_Report_Nam char(51), @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportNames (PRODID, Business_Desk_Report_Nam, RPTGRIND, RTPACHIN, RTGRSBIN) VALUES ( @PRODID, @Business_Desk_Report_Nam, @RPTGRIND, @RTPACHIN, @RTGRSBIN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportNamesSI] TO [DYNGRP]
GO

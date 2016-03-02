SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC6000SI] (@DATE1 datetime, @TIME1 datetime, @NC_Log_Message char(255), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC6000 (DATE1, TIME1, NC_Log_Message) VALUES ( @DATE1, @TIME1, @NC_Log_Message) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC6000SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC6000SI] TO [public]
GO
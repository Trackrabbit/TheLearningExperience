SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42000SI] (@TRANSFEREVENT int, @XFEREVENTDESC char(51), @NOTEINDX numeric(19,5), @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA42000 (TRANSFEREVENT, XFEREVENTDESC, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @TRANSFEREVENT, @XFEREVENTDESC, @NOTEINDX, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42000SI] TO [DYNGRP]
GO

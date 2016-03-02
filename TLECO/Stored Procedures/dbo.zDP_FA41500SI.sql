SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41500SI] (@STRUCTUREINDX int, @STRUCTUREID char(31), @STRUCTDESCR char(31), @NOTEINDX numeric(19,5), @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA41500 (STRUCTUREINDX, STRUCTUREID, STRUCTDESCR, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @STRUCTUREINDX, @STRUCTUREID, @STRUCTDESCR, @NOTEINDX, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41500SI] TO [DYNGRP]
GO

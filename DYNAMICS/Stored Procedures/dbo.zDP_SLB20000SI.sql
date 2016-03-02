SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB20000SI] (@SmartList_ID char(15), @SmartList_Change_Type smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB20000 (SmartList_ID, SmartList_Change_Type) VALUES ( @SmartList_ID, @SmartList_Change_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB20000SI] TO [DYNGRP]
GO

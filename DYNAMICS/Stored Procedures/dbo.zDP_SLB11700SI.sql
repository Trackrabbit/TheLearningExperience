SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11700SI] (@SmartList_ID char(15), @PRODID smallint, @Series_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB11700 (SmartList_ID, PRODID, Series_Number) VALUES ( @SmartList_ID, @PRODID, @Series_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11700SI] TO [DYNGRP]
GO

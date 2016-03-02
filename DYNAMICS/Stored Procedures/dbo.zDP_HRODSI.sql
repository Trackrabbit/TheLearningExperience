SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRODSI] (@DEFAULTNUMBER_I smallint, @TERMITEM_I char(51), @TERMATTRIBUTE_I smallint, @TERMORDER_I smallint, @ADDTODEFAULTITEMS_I tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HROD (DEFAULTNUMBER_I, TERMITEM_I, TERMATTRIBUTE_I, TERMORDER_I, ADDTODEFAULTITEMS_I) VALUES ( @DEFAULTNUMBER_I, @TERMITEM_I, @TERMATTRIBUTE_I, @TERMORDER_I, @ADDTODEFAULTITEMS_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRODSI] TO [DYNGRP]
GO

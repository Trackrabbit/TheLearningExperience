SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40201SS_2] (@PRCHLDID char(15)) AS  set nocount on SELECT TOP 1  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE PRCHLDID = @PRCHLDID ORDER BY PRCHLDID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40201SS_2] TO [DYNGRP]
GO

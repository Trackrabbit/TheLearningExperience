SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREVDEFSI] (@REVINTLTITLES_I char(31), @REVINTSEQUENCE_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRREVDEF (REVINTLTITLES_I, REVINTSEQUENCE_I) VALUES ( @REVINTLTITLES_I, @REVINTSEQUENCE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREVDEFSI] TO [DYNGRP]
GO
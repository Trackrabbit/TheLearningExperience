SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00102SI] (@ACCATNUM smallint, @ACCATDSC char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL00102 (ACCATNUM, ACCATDSC) VALUES ( @ACCATNUM, @ACCATDSC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00102SI] TO [DYNGRP]
GO
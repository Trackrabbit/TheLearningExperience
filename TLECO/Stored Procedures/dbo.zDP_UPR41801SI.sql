SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41801SI] (@STATEFED char(3), @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR41801 (STATEFED, DSCRIPTN) VALUES ( @STATEFED, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41801SI] TO [DYNGRP]
GO

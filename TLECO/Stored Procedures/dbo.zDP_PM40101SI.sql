SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM40101SI] (@UNIQKEY char(1), @INDEX1 smallint, @DSCRIPTN char(31), @ENDGPDYS smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM40101 (UNIQKEY, INDEX1, DSCRIPTN, ENDGPDYS) VALUES ( @UNIQKEY, @INDEX1, @DSCRIPTN, @ENDGPDYS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40101SI] TO [DYNGRP]
GO
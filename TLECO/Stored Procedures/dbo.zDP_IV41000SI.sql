SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41000SI] (@SETUPKEY smallint, @NUMBERSHIFTS smallint, @HRSPRSHFT numeric(19,5), @STRTTIME datetime, @DWNONWKNDS smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV41000 (SETUPKEY, NUMBERSHIFTS, HRSPRSHFT, STRTTIME, DWNONWKNDS) VALUES ( @SETUPKEY, @NUMBERSHIFTS, @HRSPRSHFT, @STRTTIME, @DWNONWKNDS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41000SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO03100SI] (@CARDNAME char(15), @PROCESSELECTRONICALLY tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DO03100 (CARDNAME, PROCESSELECTRONICALLY) VALUES ( @CARDNAME, @PROCESSELECTRONICALLY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO03100SI] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00301SI] (@ITEMNMBR char(31), @LOTNUMBR char(21), @LOTATRB1 char(11), @LOTATRB2 char(11), @LOTATRB3 char(11), @LOTATRB4 datetime, @LOTATRB5 datetime, @IUSCOUNT smallint, @RCRDSTTS smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00301 (ITEMNMBR, LOTNUMBR, LOTATRB1, LOTATRB2, LOTATRB3, LOTATRB4, LOTATRB5, IUSCOUNT, RCRDSTTS) VALUES ( @ITEMNMBR, @LOTNUMBR, @LOTATRB1, @LOTATRB2, @LOTATRB3, @LOTATRB4, @LOTATRB5, @IUSCOUNT, @RCRDSTTS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00301SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00114SI] (@ITEMNMBR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00114 (ITEMNMBR) VALUES ( @ITEMNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00114SI] TO [DYNGRP]
GO

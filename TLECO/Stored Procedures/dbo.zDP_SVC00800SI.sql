SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00800SI] (@Keyword char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00800 (Keyword) VALUES ( @Keyword) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00800SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00315SI] (@EQUIPID int, @ACTIVE tinyint, @SCHEDID char(9), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00315 (EQUIPID, ACTIVE, SCHEDID) VALUES ( @EQUIPID, @ACTIVE, @SCHEDID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00315SI] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10600SI] (@EMPLOYID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DD10600 (EMPLOYID) VALUES ( @EMPLOYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10600SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00909SI] (@SVCAREA char(11), @NAME char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00909 (SVCAREA, NAME) VALUES ( @SVCAREA, @NAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00909SI] TO [DYNGRP]
GO

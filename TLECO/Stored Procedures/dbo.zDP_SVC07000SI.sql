SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07000SI] (@Menu_ID numeric(19,5), @Name char(31), @KeyCode char(11), @Path char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC07000 (Menu_ID, Name, KeyCode, Path) VALUES ( @Menu_ID, @Name, @KeyCode, @Path) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07000SI] TO [DYNGRP]
GO

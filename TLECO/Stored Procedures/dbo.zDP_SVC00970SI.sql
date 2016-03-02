SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00970SI] (@ShortName char(41), @LongName char(201), @Path char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00970 (ShortName, LongName, Path) VALUES ( @ShortName, @LongName, @Path) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00970SI] TO [DYNGRP]
GO

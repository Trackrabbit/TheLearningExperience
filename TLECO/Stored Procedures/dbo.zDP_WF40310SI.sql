SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40310SI] (@YEAR1 smallint, @DATE1 datetime, @DateDescription char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40310 (YEAR1, DATE1, DateDescription) VALUES ( @YEAR1, @DATE1, @DateDescription) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40310SI] TO [DYNGRP]
GO

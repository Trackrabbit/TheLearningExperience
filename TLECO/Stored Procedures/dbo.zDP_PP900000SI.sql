SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP900000SI] (@USERID char(15), @YEAR1 smallint, @PERIODID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP900000 (USERID, YEAR1, PERIODID) VALUES ( @USERID, @YEAR1, @PERIODID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP900000SI] TO [DYNGRP]
GO
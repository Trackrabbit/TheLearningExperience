SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50400SI] (@PERIODID smallint, @YEAR1 smallint, @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL50400 (PERIODID, YEAR1, USERID) VALUES ( @PERIODID, @YEAR1, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50400SI] TO [DYNGRP]
GO

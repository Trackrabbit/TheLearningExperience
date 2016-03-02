SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020130SI] (@Query_Index smallint, @Query_Name char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SK020130 (Query_Index, Query_Name) VALUES ( @Query_Index, @Query_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020130SI] TO [DYNGRP]
GO

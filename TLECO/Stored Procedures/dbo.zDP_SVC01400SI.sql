SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC01400SI] (@USERID char(15), @Call_From char(3), @Call_To char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC01400 (USERID, Call_From, Call_To) VALUES ( @USERID, @Call_From, @Call_To) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC01400SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20100SI] (@EntityTypeID int, @MSGNUM smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY20100 (EntityTypeID, MSGNUM) VALUES ( @EntityTypeID, @MSGNUM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20100SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200SI] (@ACTINDX int, @aaAcctClassID int, @aaChangeDate datetime, @aaChangeTime datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00200 (ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime) VALUES ( @ACTINDX, @aaAcctClassID, @aaChangeDate, @aaChangeTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200SI] TO [DYNGRP]
GO

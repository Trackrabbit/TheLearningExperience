SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC50200SI] (@USERID char(15), @CURNCYID char(15), @CURRNIDX smallint, @HSTRCLRT numeric(19,7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC50200 (USERID, CURNCYID, CURRNIDX, HSTRCLRT) VALUES ( @USERID, @CURNCYID, @CURRNIDX, @HSTRCLRT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC50200SI] TO [DYNGRP]
GO

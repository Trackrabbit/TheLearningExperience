SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10750SI] (@SECDICTID smallint, @SECURITYTASKID char(25), @DICTID smallint, @SECRESTYPE smallint, @SECURITYID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY10750 (SECDICTID, SECURITYTASKID, DICTID, SECRESTYPE, SECURITYID) VALUES ( @SECDICTID, @SECURITYTASKID, @DICTID, @SECRESTYPE, @SECURITYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10750SI] TO [DYNGRP]
GO

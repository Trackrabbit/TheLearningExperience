SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG03000SI] (@EMPLOYID char(15), @DEPRTMNT char(7), @JOBTITLE char(7), @PAYROLCD char(7), @UPRACTYP smallint, @aaAliasID int, @aaAssignedPercent int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG03000 (EMPLOYID, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, aaAliasID, aaAssignedPercent) VALUES ( @EMPLOYID, @DEPRTMNT, @JOBTITLE, @PAYROLCD, @UPRACTYP, @aaAliasID, @aaAssignedPercent) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG03000SI] TO [DYNGRP]
GO
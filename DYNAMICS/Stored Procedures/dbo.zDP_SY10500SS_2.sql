SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10500SS_2] (@SECURITYROLEID char(25), @USERID char(15), @CMPANYID smallint) AS  set nocount on SELECT TOP 1  USERID, CMPANYID, SECURITYROLEID, DEX_ROW_ID FROM .SY10500 WHERE SECURITYROLEID = @SECURITYROLEID AND USERID = @USERID AND CMPANYID = @CMPANYID ORDER BY SECURITYROLEID ASC, USERID ASC, CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10500SS_2] TO [DYNGRP]
GO

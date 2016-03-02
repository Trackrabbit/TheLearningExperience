SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10600SS_1] (@SECURITYROLEID char(25), @SECURITYTASKID char(25)) AS  set nocount on SELECT TOP 1  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE SECURITYROLEID = @SECURITYROLEID AND SECURITYTASKID = @SECURITYTASKID ORDER BY SECURITYROLEID ASC, SECURITYTASKID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10600SS_1] TO [DYNGRP]
GO

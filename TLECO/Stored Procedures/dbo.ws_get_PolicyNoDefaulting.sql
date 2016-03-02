SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_PolicyNoDefaulting](  
	@PolicyId char(36),  
	@RoleId char(36)    
)  
 AS  
 
--Check if Policy exists for role, if so return full Policy 
IF EXISTS (select * from dbo.WSPolicyBehaviorSelection where PolicyId = @PolicyId and RoleId = @RoleId) 
exec dbo.ws_get_Policy @PolicyId, @RoleId 
GO
GRANT EXECUTE ON  [dbo].[ws_get_PolicyNoDefaulting] TO [DYNGRP]
GO

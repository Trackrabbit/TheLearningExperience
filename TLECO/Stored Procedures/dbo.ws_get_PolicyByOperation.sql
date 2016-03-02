SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_PolicyByOperation](   
	@Operation varchar(256),   
	@RoleId char(36)     
)   
 AS   
 
declare @PolicyId char(36) 
select @PolicyId = PolicyId from WSPolicy where NameResXId = @Operation + 'PolicyName' 
--select @PolicyId = PolicyId from WSPolicyAssignment where Operation = @Operation 
 
exec dbo.ws_get_Policy @PolicyId, @RoleId 
 
GO
GRANT EXECUTE ON  [dbo].[ws_get_PolicyByOperation] TO [DYNGRP]
GO

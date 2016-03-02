SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
  
CREATE PROCEDURE [dbo].[ws_delete_WSBusinessObjectUserAssignment]  
(  
   @BusinessObjectTypeId	uniqueidentifier = NULL, 
   @OrganizationKey		varchar(500) = NULL, 
   @UserWindowsIdentity		varchar(281) = NULL, 
   @BusinessObjectKey	nvarchar(255) = NULL, 
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
 
if (@OrganizationKey IS NOT NULL) 
begin 
	DELETE [dbo].[WSBusinessObjectUserAssignmentLine] 
	FROM  
		[dbo].[WSBusinessObjectUserAssignmentLine], [dbo].[WSBusinessObjectUserAssignmentHeader] 
	WHERE  
		[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] = @OrganizationKey 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
		and [dbo].WSBusinessObjectUserAssignmentLine.[BusinessObjectKey] = @BusinessObjectKey 
 
	-- If no more lines exist for the header, delete it as well 
	IF NOT EXISTS(select HeaderId  
					FROM 
						[dbo].WSBusinessObjectUserAssignmentLine, [dbo].[WSBusinessObjectUserAssignmentHeader] 
					WHERE  
						[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] = @OrganizationKey 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
				) 
	  BEGIN 
	    DELETE FROM [dbo].[WSBusinessObjectUserAssignmentHeader] 
	    WHERE  
			[dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] = @OrganizationKey 
			and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
			and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
	  END 
end 
else 
begin 
	DELETE [dbo].[WSBusinessObjectUserAssignmentLine] 
	FROM  
		[dbo].[WSBusinessObjectUserAssignmentLine], [dbo].[WSBusinessObjectUserAssignmentHeader] 
	WHERE  
		[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] IS NULL 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
		and [dbo].WSBusinessObjectUserAssignmentLine.[BusinessObjectKey] = @BusinessObjectKey 
 
	-- If no more lines exist for the header, delete it as well 
	IF NOT EXISTS(select HeaderId  
					FROM 
						[dbo].WSBusinessObjectUserAssignmentLine, [dbo].[WSBusinessObjectUserAssignmentHeader] 
					WHERE  
						[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] IS NULL 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
						and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
				) 
	  BEGIN 
	    DELETE FROM [dbo].[WSBusinessObjectUserAssignmentHeader] 
	    WHERE  
			[dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] IS NULL 
			and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
			and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
	  END 
end 
 
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT  
   
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1  
   BEGIN  
      SET @RETURNVALUE = 0  
   END  
ELSE  
   BEGIN  
      IF @ERROR_VAR <> 0   
         SET @RETURNVALUE = @ERROR_VAR  
      ELSE  
         SET @RETURNVALUE =  -99 -- UNEXPECTED NR OF RECORDS AFFECTED  
   END  
   
GO
GRANT EXECUTE ON  [dbo].[ws_delete_WSBusinessObjectUserAssignment] TO [DYNGRP]
GO

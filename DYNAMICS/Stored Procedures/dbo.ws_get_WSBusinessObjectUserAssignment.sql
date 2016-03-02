SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
  
CREATE PROCEDURE [dbo].[ws_get_WSBusinessObjectUserAssignment]  
(  
   @BusinessObjectTypeId	uniqueidentifier = NULL, 
   @OrganizationKey		varchar(500) = NULL, 
   @UserWindowsIdentity		varchar(281) = NULL, 
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
 
if (@OrganizationKey IS NOT NULL) 
	begin 
		SELECT   
		   [BusinessObjectKey] 
		FROM 
		[dbo].WSBusinessObjectUserAssignmentHeader,[dbo].WSBusinessObjectUserAssignmentLine 
		WHERE 
		[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] = @OrganizationKey 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
	end 
else 
	begin 
		SELECT   
		   [BusinessObjectKey] 
		FROM 
		[dbo].WSBusinessObjectUserAssignmentHeader,[dbo].WSBusinessObjectUserAssignmentLine 
		WHERE 
		[dbo].WSBusinessObjectUserAssignmentHeader.[Id] = [dbo].WSBusinessObjectUserAssignmentLine.[HeaderId] 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[OrganizationKey] IS NULL 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[UserWindowsIdentity] = @UserWindowsIdentity 
		and [dbo].WSBusinessObjectUserAssignmentHeader.[BusinessObjectTypeId] = @BusinessObjectTypeId 
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
GRANT EXECUTE ON  [dbo].[ws_get_WSBusinessObjectUserAssignment] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
  
CREATE PROCEDURE [dbo].[ws_insert_WSBusinessObjectUserAssignment]  
(  
   @Id   uniqueidentifier = NULL, 
   @BusinessObjectTypeId   uniqueidentifier = NULL, 
   @UserWindowsIdentity   varchar(281) = NULL, 
   @OrganizationKey   varchar(500) = NULL, 
   @BusinessObjectKey	nvarchar(255) = NULL, 
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
DECLARE @IdToAssign uniqueidentifier 
 
if (@OrganizationKey IS NOT NULL) 
begin 
	select @IdToAssign = Id 
		FROM 
			[dbo].WSBusinessObjectUserAssignmentHeader 
		WHERE [OrganizationKey] = @OrganizationKey 
			and [UserWindowsIdentity] = @UserWindowsIdentity 
			and [BusinessObjectTypeId] = @BusinessObjectTypeId 
end			 
else 
begin 
	select @IdToAssign = Id 
		FROM 
			[dbo].WSBusinessObjectUserAssignmentHeader 
		WHERE [OrganizationKey] IS NULL 
			and [UserWindowsIdentity] = @UserWindowsIdentity 
			and [BusinessObjectTypeId] = @BusinessObjectTypeId 
end 
 
-- If the header doesn't exist, create it 
IF (@IdToAssign IS NULL) 
  BEGIN 
    SET @IdToAssign = @Id 
    INSERT dbo.WSBusinessObjectUserAssignmentHeader( 
		Id, 
		BusinessObjectTypeId, 
		UserWindowsIdentity, 
		OrganizationKey 
    ) 
    VALUES( 
		@IdToAssign, 
		@BusinessObjectTypeId, 
		@UserWindowsIdentity, 
		@OrganizationKey 
    ) 
  END 
 
INSERT dbo.WSBusinessObjectUserAssignmentLine( 
	HeaderId, 
	BusinessObjectKey 
) 
VALUES( 
	@IdToAssign, 
	@BusinessObjectKey 
) 
 
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
GRANT EXECUTE ON  [dbo].[ws_insert_WSBusinessObjectUserAssignment] TO [DYNGRP]
GO

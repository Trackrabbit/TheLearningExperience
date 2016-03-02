SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DE_CreateParentChild] 
    @CorporateCustomer char(15) 
,@ChileCustomer char(15) 
AS

    DECLARE @RC int 
    DECLARE @ErrorState int 
    DECLARE @ErrorString varchar(255) 
    DECLARE @ErrorMessage nvarchar(max)

--Execute the eConnect stored 
--procedure with taCreateParentID and taParentIDChild passed parameters and required defaults.

if NOT EXISTS (Select 1 FROm RM00101 where CPRCSTNM = @CorporateCustomer)
BEGIN
execute taCreateParentID  @I_vCPRCSTNM=@CorporateCustomer
      ,@O_iErrorState = @ErrorState OUTPUT 
        ,@oErrString = @ErrorString OUTPUT
END

    EXECUTE @RC = [taParentIDChild] 
       @I_VCPRCSTNM=@CorporateCustomer
          ,@I_VCUSTNMBR=@ChileCustomer
          ,@I_vCreateRemove=0
        ,@O_iErrorState = @ErrorState OUTPUT 
        ,@oErrString = @ErrorString OUTPUT

--If any errors are returned, get the consolidated error message 
--and raise a SQL error. 
    IF LEN(@ErrorString) <> 0 
    BEGIN 
        SET @ErrorMessage = Dynamics.dbo.fnvGeteConnectErrorMessage(@ErrorString) 
        RAISERROR (@ErrorMessage, 18, 1)

        RETURN 
    END
GO
GRANT EXECUTE ON  [dbo].[DE_CreateParentChild] TO [DYNGRP]
GO

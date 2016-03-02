SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Contract_Billing] (  @USERID char(15),  @ContractType smallint,  @ContractNumber char(11),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC00615 where CONSTS = @ContractType and CONTNBR = @ContractNumber and MKDTOPST = 1 and USERID <> @USERID if @OtherUser is null  begin  select @OtherUser = USERID from SVC00640 where CONSTS = @ContractType and CONTNBR = @ContractNumber   if @OtherUser is null  return  else  select @Error = 52, @ErrorMsg = ' is being edited by ' + RTrim(@OtherUser) + '. Please try again later.'  end else   select @Error = 50, @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for posting' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Billing] TO [DYNGRP]
GO

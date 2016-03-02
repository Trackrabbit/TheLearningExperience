SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Contract_Billing_Reversal] (  @USERID char(15),  @ContractType smallint,  @ContractNumber char(11),  @Error integer OUTPUT,  @ReturnParameter varchar(255) OUTPUT ) As declare @OtherUser char(15)  set nocount on  select @Error = 0  if exists(select * from SVC00603 where CONSTS = @ContractType and CONTNBR = @ContractNumber and POSTED = 0 and (svcReverseType = 6 or svcReverseType =7))  begin  select @Error = 60,   @ReturnParameter = 'There are unposted cancelled lines on this contract: '  return  end select @OtherUser = USERID from SVC00635   where  CONSTS = @ContractType and CONTNBR = @ContractNumber   and MKDTOPST = 1 and USERID <> @USERID  if @OtherUser is null  begin  select @OtherUser = USERID from SVC00615 where CONSTS = @ContractType and  CONTNBR = @ContractNumber and MKDTOPST = 1 and USERID <> @USERID   if @OtherUser is null  begin  select @OtherUser = USERID from SVC00640 where CONSTS = @ContractType and CONTNBR = @ContractNumber   if @OtherUser is null  return  else  select @Error = 52, @ReturnParameter = ' is being edited by ' + RTrim(@OtherUser) + '. Please try again later.'  end  else  begin  select @Error = 50, @ReturnParameter =  RTrim(@OtherUser)   end  end else   select @Error = 50, @ReturnParameter =  RTrim(@OtherUser)   set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Billing_Reversal] TO [DYNGRP]
GO

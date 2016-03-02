SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Contract_Revenue] (  @USERID char(15),  @ContractType smallint,  @ContractNumber char(11),  @Year integer,  @Period integer,  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC00625 where YEAR1 = @Year and   PERIODID = @Period and CONSTS = @ContractType and  CONTNBR = @ContractNumber and MKDTOPST = 1 and USERID <> @USERID if @OtherUser is null  return select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for posting' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Revenue] TO [DYNGRP]
GO

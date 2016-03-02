SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Contract_RenewType]  (@CONSTS smallint,  @CONTNBR char(11),  @RenewType smallint OUTPUT,  @UseSameNumber tinyint OUTPUT)  AS select @RenewType = RENCNTTYP, @UseSameNumber = SVC_Use_Same_Number  from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR if @RenewType = 0 or @RenewType = 4 select @RenewType = 2  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_RenewType] TO [DYNGRP]
GO

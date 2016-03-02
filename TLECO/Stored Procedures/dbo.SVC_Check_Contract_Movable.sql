SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Contract_Movable]  (@CONSTS smallint,  @CONTNBR char(11),  @MovableError smallint OUTPUT)  AS select @MovableError = 0 if exists(select * from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and POSTED = 0)  select @MovableError = 1 else if exists(select * from SVC00604 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and Status = 0)  select @MovableError = 2 else if (select sum(Amount_To_Invoice) from SVC00607 where CONSTS = @CONSTS and CONTNBR = @CONTNBR) > 0  select @MovableError = 3 else if ((select SVC_Liability_Type from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR) > 1)  and  ((select isnull(TOTAL,0)- isnull(DSCDLRAM,0) from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR) <>  (select isnull(sum(Net_Transaction_Amount),0) from SVC00604 where CONSTS = @CONSTS and CONTNBR = @CONTNBR))  select @MovableError = 4 return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Movable] TO [DYNGRP]
GO

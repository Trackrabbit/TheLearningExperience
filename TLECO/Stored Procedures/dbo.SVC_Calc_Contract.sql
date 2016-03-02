SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Calc_Contract](@CONSTS smallint,  @CONTNBR char(11)) as  update SVC00601 set Contract_Line_Status = Contract_Line_Status where CONSTS = @CONSTS and CONTNBR = @CONTNBR     
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_Contract] TO [DYNGRP]
GO

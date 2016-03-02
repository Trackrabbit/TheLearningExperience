SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Upd_Contract_Audit_Type] (@FromType int,  @ToType int,  @ContractNumber char(11) ) AS UPDATE SVC00620  SET CONSTS = @ToType WHERE CONSTS=@FromType AND CONTNBR = @ContractNumber    
GO
GRANT EXECUTE ON  [dbo].[SVC_Upd_Contract_Audit_Type] TO [DYNGRP]
GO

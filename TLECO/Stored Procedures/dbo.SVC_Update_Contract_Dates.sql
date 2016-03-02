SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Update_Contract_Dates] AS UPDATE SVC00600  SET   SVC00600.NXTBLDTE =  (SELECT MIN(IsNull(SVC00603.INVODATE,'January 1, 2999 00:00:00')) from   SVC00603   where  SVC00603.CONSTS = SVC00600.CONSTS and  SVC00603.CONTNBR = SVC00600.CONTNBR and  SVC00603.POSTED = 0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Contract_Dates] TO [DYNGRP]
GO

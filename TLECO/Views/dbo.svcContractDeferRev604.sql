SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcContractDeferRev604] as (  select  SVC00604.CONSTS, SVC00604.CONTNBR,   SVC00604.LNSEQNBR,   SVC00604.PSTDAMNT,  SVC00604.DEX_ROW_ID,  dbo.svcGetContractRevenueGLNumber(SVC00604.CONSTS, SVC00604.CONTNBR, SVC00604.LNSEQNBR, SVC00604.DEX_ROW_ID)  as GLNumber  from SVC00604 with (nolock)  where SVC00604.Status = 1 )    
GO
GRANT SELECT ON  [dbo].[svcContractDeferRev604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcContractDeferRev604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcContractDeferRev604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcContractDeferRev604] TO [DYNGRP]
GO

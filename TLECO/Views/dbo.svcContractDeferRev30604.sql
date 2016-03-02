SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcContractDeferRev30604] as (  select  SVC30604.CONSTS, SVC30604.CONTNBR, SVC30604.LNSEQNBR,   SVC30604.PSTDAMNT,  SVC30604.DEX_ROW_ID,  dbo.svcGetContractHistRevenueGLNumber(SVC30604.CONSTS, SVC30604.CONTNBR, SVC30604.LNSEQNBR, SVC30604.DEX_ROW_ID)   as GLNumber  from SVC30604 with (nolock)  where SVC30604.Status = 1 )    
GO
GRANT SELECT ON  [dbo].[svcContractDeferRev30604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcContractDeferRev30604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcContractDeferRev30604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcContractDeferRev30604] TO [DYNGRP]
GO

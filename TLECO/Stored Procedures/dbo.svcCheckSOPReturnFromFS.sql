SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcCheckSOPReturnFromFS]  (@SOP_Type smallint,  @SOP_Number char(21),  @FromFS tinyint OUTPUT) As   if exists(select 1 from SOP10200 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and CONTNBR > '')  select @FromFS = 1  else  select @FromFS = 0 return     
GO
GRANT EXECUTE ON  [dbo].[svcCheckSOPReturnFromFS] TO [DYNGRP]
GO

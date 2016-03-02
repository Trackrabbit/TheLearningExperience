SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcDeleteServiceCallECO]  @RecType smallint,   @CallNumber char(11) As  if exists(select 1 from SVC00306 where SRVRECTYPE = @RecType AND CALLNBR = @CallNumber)  delete from SVC00306 where  SRVRECTYPE = @RecType AND CALLNBR = @CallNumber  return (0)    
GO
GRANT EXECUTE ON  [dbo].[svcDeleteServiceCallECO] TO [DYNGRP]
GO

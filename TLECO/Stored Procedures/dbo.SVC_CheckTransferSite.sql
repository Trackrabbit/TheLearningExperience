SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_CheckTransferSite]  (  @DocNumber char(15),  @FromSiteAllowed tinyint output,  @ToSiteAllowed tinyint output ) As  select @FromSiteAllowed = 1, @ToSiteAllowed = 1 if (select count(*) from SVC00701 where ORDDOCID = @DocNumber and STATUS > 0) > 0   select @FromSiteAllowed = 0 if (select count(*) from SVC00701 where ORDDOCID = @DocNumber and STATUS > 0 and QTYSHPPD > 0 ) > 0   select @ToSiteAllowed = 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_CheckTransferSite] TO [DYNGRP]
GO

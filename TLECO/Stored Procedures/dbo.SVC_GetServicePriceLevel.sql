SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_GetServicePriceLevel]  (  @CUSTNMBR varchar(15),  @PriceLevel char(11) OUTPUT  ) As set nocount on select @PriceLevel = IsNull(PRCLEVEL,'') from RM00101 where CUSTNMBR = @CUSTNMBR if @PriceLevel is null or @PriceLevel = ''   select @PriceLevel = IsNull(PRCLEVEL,'') from SVC00998  if @PriceLevel is null or @PriceLevel = ''   select @PriceLevel = IsNull(PRCLEVEL,'') from RM40101 return    
GO
GRANT EXECUTE ON  [dbo].[SVC_GetServicePriceLevel] TO [DYNGRP]
GO

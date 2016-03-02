SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE  [dbo].[SVC_Get_ItemPriceLevel]   (@SRVRECTYPE smallint,  @CALLNBR char(11),  @linetype char(1),   @ITEMNMBR char(31),   @pricelevel char(11) OUTPUT) AS declare @itempricelevel char(11) select   @itempricelevel = PRCLEVEL from  IV00101 I  where I.ITEMNMBR = @ITEMNMBR IF @linetype <> 'L' BEGIN  select @pricelevel = IsNull(NullIf(PRICELVL,''),IsNull((select NullIf(R.PRCLEVEL,'') from RM00101 R where R.CUSTNMBR = S.CUSTNMBR),IsNull((select NullIf(PRCLEVEL,'') from RM40101),@itempricelevel)))  from SVC00200 S   where (S.SRVRECTYPE = @SRVRECTYPE and  S.CALLNBR = @CALLNBR) END ELSE BEGIN  select @pricelevel = @itempricelevel END return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ItemPriceLevel] TO [DYNGRP]
GO

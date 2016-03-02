SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[sopLineHasQtyToPurchase] (  @I_sSOPTYPE smallint,  @I_tNonIVItem tinyint,  @I_tDropShipItem tinyint,  @I_sItemType smallint,  @I_nQtyRemaining numeric(19,5),  @I_nQtyToBOrder numeric(19,5) ) RETURNS tinyint AS BEGIN  DECLARE  @tExists tinyint  select  @tExists=0  select @tExists = 1 where   (  (@I_tNonIVItem = 0 and @I_tDropShipItem = 0 and (@I_sItemType = 1)) and  ( (@I_sSOPTYPE = 5 and @I_nQtyRemaining > 0) or  (@I_sSOPTYPE <> 5 and @I_nQtyToBOrder > 0)  )  ) or   ( (not (@I_tNonIVItem = 0 and @I_tDropShipItem = 0 and (@I_sItemType = 1))) and  ((@I_sSOPTYPE = 5 and @I_nQtyRemaining > 0) or  (@I_sSOPTYPE <> 5 and (@I_nQtyToBOrder > 0 or @I_nQtyRemaining > 0)))  )   return isnull(@tExists, 0) END   
GO
GRANT EXECUTE ON  [dbo].[sopLineHasQtyToPurchase] TO [DYNGRP]
GO

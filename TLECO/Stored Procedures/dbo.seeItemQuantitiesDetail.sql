SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeItemQuantitiesDetail]   @ItemNumber varchar(50),   @LocationCode varchar(50) as select *   from ItemQuantities   where [Item Number] = @ItemNumber    and [Location Code] = @LocationCode          
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail] TO [rpt_warehouse manager]
GO

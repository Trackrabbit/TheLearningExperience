SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[vatLineAnalisysMode]  @O_tVatOn tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @MS_ITEM_1 int,  @FALSE tinyint  select   @O_tVatOn = 0,  @O_iErrorState = 0,  @MS_ITEM_1 = power(2,24)  return   
GO
GRANT EXECUTE ON  [dbo].[vatLineAnalisysMode] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcCheckEquipmentOnCall] (@EquipID int,  @CallNumber char(11) output)  as  select top 1 @CallNumber = CALLNBR from SVC00201 where EQUIPID = @EquipID  if @CallNumber ='' or @CallNumber is null  select top 1 @CallNumber = CALLNBR from SVC00250 where EQUIPID = @EquipID   select @CallNumber = isnull(@CallNumber,'') return     
GO
GRANT EXECUTE ON  [dbo].[svcCheckEquipmentOnCall] TO [DYNGRP]
GO

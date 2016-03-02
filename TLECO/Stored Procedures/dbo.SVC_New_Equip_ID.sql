SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_New_Equip_ID]  (@newequipid integer OUTPUT) as declare @nextid integer select @nextid = EQUIPID from SVC00999 if @nextid = 0 select @nextid = 1 if exists(select * from SVC00300 where EQUIPID = @nextid) select @nextid = (select MAX(EQUIPID) from SVC00300) +1 update SVC00999 set  SVC00999.EQUIPID = @nextid + 1   where SVC00999.SEQUENCE1 = 1 select @newequipid = @nextid    
GO
GRANT EXECUTE ON  [dbo].[SVC_New_Equip_ID] TO [DYNGRP]
GO

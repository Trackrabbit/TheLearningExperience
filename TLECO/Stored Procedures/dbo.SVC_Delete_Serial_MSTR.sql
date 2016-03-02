SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Delete_Serial_MSTR]   @EquipID integer AS  if exists(select * from SVC00601 where CONSTS = 2 and EQUIPID = @EquipID) or  exists(select * from SVC00202 where SRVRECTYPE > 1 and EQUIPID = @EquipID) or  exists(select * from SVC06100 where WORECTYPE = 2 and IBEQUIPID = @EquipID)   return (99)  delete from SVC00301 where EQUIPID = @EquipID delete from SVC00302 where EQUIPID = @EquipID delete from SVC00306 where EQUIPID = @EquipID delete from SVC00310 where EQUIPID = @EquipID delete from SVC00300 where EQUIPID = @EquipID return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Serial_MSTR] TO [DYNGRP]
GO

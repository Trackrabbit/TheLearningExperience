SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_UpdateCreateEquipFlag]   @Flag Tinyint as declare @Item char(30) declare @Location char(10)   update SVC00952 set SVC_Create_Non_Serial_Eq = @Flag  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_UpdateCreateEquipFlag] TO [DYNGRP]
GO

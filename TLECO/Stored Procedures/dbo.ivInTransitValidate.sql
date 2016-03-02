SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ivInTransitValidate] (@ORDDOCID as char(15),  @Status as smallint output)     AS  select @Status = 0  if not exists(select * from SVC00700 where ORDDOCID =@ORDDOCID)  select @Status = 18 else if (select STATUS from SVC00700 where ORDDOCID =@ORDDOCID) = 99   select @Status = 99 else if (select max(QTYSHPPD - QTYRECVD) from SVC00701 where ORDDOCID = @ORDDOCID) = 0  select @Status = 11  return 0    
GO
GRANT EXECUTE ON  [dbo].[ivInTransitValidate] TO [DYNGRP]
GO

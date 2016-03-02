SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcTransferNumberCheckInUse] (@ORDDOCID as char(15),  @Error as smallint output)     AS  select @Error = 0 if (select STATUS from SVC00700 where ORDDOCID =@ORDDOCID) = 99   select @Error = 99 else if exists(select * from SVC00700 where ORDDOCID =@ORDDOCID)  select @Error = 1 else if exists(select * from SVC30700 where ORDDOCID =@ORDDOCID)  select @Error = 2 return 0    
GO
GRANT EXECUTE ON  [dbo].[svcTransferNumberCheckInUse] TO [DYNGRP]
GO

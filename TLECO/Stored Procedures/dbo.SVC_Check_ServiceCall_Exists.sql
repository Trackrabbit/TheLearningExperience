SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_ServiceCall_Exists]  (  @SRVRECTYPE smallint,  @CALLNBR char(11),  @Status integer OUTPUT  ) As if exists(select * from SVC00200 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR)   select @Status = 1 else  select @Status = 0   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_ServiceCall_Exists] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_ISC_Add_Readings]  (@EQUIPID int,  @METER1 int,  @METER2 int,  @METER3 int = 0,  @METER4 int = 0,  @METER5 int = 0) AS declare @Date datetime select @Date = CONVERT(varchar(10),GETDATE(),101) + ' 00:00:00' exec SVC_METER_Post_Serial_Readings @EQUIPID,@METER1,@METER2,@METER3,@METER4,@METER5,  0,0,0,0,0,@Date,'eSC ','e.ServiceCenter','eSC','Batch Post'   
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Add_Readings] TO [DYNGRP]
GO

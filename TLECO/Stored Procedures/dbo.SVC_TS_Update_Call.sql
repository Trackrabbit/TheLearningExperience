SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_TS_Update_Call]  (@CALLNBR char(11),  @TYPE integer,   @RESOURCE char(11),  @ETADTE datetime,   @ETATME char(20),  @ETTR numeric(19,2)) AS declare @default_status char(3) declare @User varchar(30)  if RTRIM(@RESOURCE) = 'None'   select @RESOURCE = '' if @TYPE = 0  BEGIN  update SVC00200 set  TECHID = RTRIM(@RESOURCE), ETADTE = @ETADTE,   ETATME = @ETATME, ETTR = CONVERT(numeric(19,2),@ETTR),@default_status = SRVSTAT  where SRVRECTYPE = 2 and CALLNBR = @CALLNBR  select @@ERROR END ELSE BEGIN  update SVC00200 set OFFID = RTRIM(@RESOURCE), ETADTE = @ETADTE, ETATME = @ETATME,ETTR = CONVERT(numeric(19,2),@ETTR),@default_status = SRVSTAT  where SRVRECTYPE = 2 and CALLNBR = @CALLNBR END IF @default_status is null  select @default_status = '' select @User = SUSER_SNAME()  select @User = SUBSTRING(@User,1,15) exec SVC_Create_Service_Audit @CALLNBR,2,@default_status,@User,'Call Updated for Tech By Scheduler' exec SVC_TS_Call_Data @CALLNBR   
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_Update_Call] TO [DYNGRP]
GO

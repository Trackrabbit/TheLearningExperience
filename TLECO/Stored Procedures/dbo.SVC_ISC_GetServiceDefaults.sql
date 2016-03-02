SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_GetServiceDefaults]  (  @default_status varchar(3) OUTPUT,  @default_type varchar(10) OUTPUT,  @default_office char(11) OUTPUT,  @default_timezone char(3) OUTPUT,  @StatusDescription varchar(30) OUTPUT   ) As set nocount on  select  @default_status = SRVSTAT,  @default_type = SVC_Service_Type,  @default_timezone = TIMEZONE,  @default_office = OFFID from SVC00998 select @StatusDescription = STSDESCR from SVC00913  where SVC00913.SRVSTAT = @default_status return     
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_GetServiceDefaults] TO [DYNGRP]
GO

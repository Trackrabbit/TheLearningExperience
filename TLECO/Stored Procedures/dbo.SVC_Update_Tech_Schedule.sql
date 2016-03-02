SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Update_Tech_Schedule] (@techid varchar(11),  @status varchar(11),  @startdate datetime,  @starttime datetime,  @enddate datetime,  @endtime datetime)  as if not exists(select * from SVC00101 where TECHID = @techid  and STRTDATE = @startdate and STRTTIME = @starttime)  Begin  insert SVC00101 select  @techid,  @startdate,  @starttime,  @enddate,  @endtime,  @status,  ''  end     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Tech_Schedule] TO [DYNGRP]
GO

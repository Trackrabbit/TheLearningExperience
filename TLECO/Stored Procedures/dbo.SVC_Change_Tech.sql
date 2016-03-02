SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Change_Tech](@New_Tech char(11),  @Call_number char(11),  @Record_type smallint  ) AS  declare @L_datetime datetime,  @L_date datetime,  @L_time datetime,  @L_stat char(3),  @L_line int,  @L_available smallint,  @L_reason char(31),  @L_backup char(11)  select @L_datetime = getdate()  exec SVC_util_split_datetime @L_datetime,  @L_date output,  @L_time output  exec SVC_Check_Tech_Status @New_Tech,  @L_date,  @L_time,  @L_available output,  @L_reason output,  @L_backup output  if @L_available = 1   begin  update SVC00200  set TECHID = @New_Tech  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  end  else  begin  update SVC00200  set TECHID = @L_backup  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  end  select @L_stat = SRVSTAT  from SVC00200  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  exec SVC_Create_Service_Audit @Call_number,  @Record_type,  @L_stat,  'Escalatio Mgr',  'Escalate to new tech'    
GO
GRANT EXECUTE ON  [dbo].[SVC_Change_Tech] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Service_Audit](  @Call_number char(11),  @Record_type smallint,  @From_Status char(3),  @User char(15),  @Description char(31)  ) AS  declare @L_datetime datetime,  @L_date datetime,  @L_time datetime,  @L_Tech char(11),  @L_stat char(3),  @L_line int  select @L_Tech = TECHID  from SVC00200  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  IF @L_Tech is null  select @L_Tech = ''  select @L_datetime = getdate()  exec SVC_util_split_datetime @L_datetime,  @L_date output,  @L_time output  select @L_stat = SRVSTAT  from SVC00200  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  if @L_stat is null  select @L_stat = ''  Insert SVC00210   select  @Call_number,  @Record_type,  (select COALESCE((Select max(LNITMSEQ) + 1  from SVC00210  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type),1)),  @From_Status,  @L_stat,  @L_Tech,  @Description ,   @User,   @L_date,   @L_time    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Service_Audit] TO [DYNGRP]
GO

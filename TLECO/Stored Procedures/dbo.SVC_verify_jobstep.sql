SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_verify_jobstep]  @job_id             UNIQUEIDENTIFIER,  @step_id            INT,  @step_name          sysname,  @subsystem          NVARCHAR(40),  @command            NVARCHAR(3201),  @server             NVARCHAR(30),  @on_success_action  TINYINT,  @on_success_step_id INT,  @on_fail_action     TINYINT,  @on_fail_step_id    INT,  @os_run_priority    INT,  @database_name      sysname OUTPUT,  @database_user_name sysname OUTPUT,  @flags              INT,  @output_file_name   NVARCHAR(200) AS BEGIN  DECLARE @max_step_id             INT  DECLARE @retval                  INT  DECLARE @valid_values            VARCHAR(50)  DECLARE @owner_login_name        sysname  DECLARE @database_name_temp      sysname  DECLARE @database_user_name_temp sysname  DECLARE @temp_command            NVARCHAR(3200)  DECLARE @iPos                    INT  DECLARE @create_count            INT  DECLARE @destroy_count           INT  DECLARE @SessionID               INT  DECLARE @NSessionID              varchar(90)  SET NOCOUNT ON  SELECT @subsystem        = LTRIM(RTRIM(@subsystem))  SELECT @server           = LTRIM(RTRIM(@server))  SELECT @output_file_name = LTRIM(RTRIM(@output_file_name))  SELECT @max_step_id = ISNULL(MAX(step_id), 0)  FROM msdb.dbo.sysjobsteps  WHERE (job_id = @job_id)  IF (@step_id < 1) OR (@step_id > @max_step_id + 1)  BEGIN  SELECT @valid_values = '1..' + CONVERT(VARCHAR, @max_step_id + 1)  RAISERROR(14266, -1, -1, '@step_id', @valid_values)  RETURN(1)   END  EXECUTE @retval = msdb.dbo.sp_verify_subsystem @subsystem  IF (@retval <> 0)  RETURN(1)   IF ((LEN(@command) / 2) > 3200)  BEGIN  RAISERROR(14250, 16, 1, '@command', 3200)  RETURN(1)   END  IF ((UPPER(@subsystem) = N'ACTIVESCRIPTING') AND (@database_name = N'VBScript'))  BEGIN  SELECT @temp_command = @command  SELECT @create_count = 0  SELECT @iPos = PATINDEX('%[Cc]reate[Oo]bject[ (]%', @temp_command)  WHILE(@iPos > 0)  BEGIN  SELECT @temp_command = SUBSTRING(@temp_command, @iPos + 1, LEN(@temp_command) / 2)  SELECT @iPos = PATINDEX('%[Cc]reate[Oo]bject[ (]%', @temp_command)  SELECT @create_count = @create_count + 1  END  SELECT @destroy_count = 0  SELECT @iPos = PATINDEX('%[Ss]et %=%[Nn]othing%', @temp_command)  WHILE(@iPos > 0)  BEGIN  SELECT @temp_command = SUBSTRING(@temp_command, @iPos + 1, LEN(@temp_command) / 2)  SELECT @iPos = PATINDEX('%[Ss]et %=%[Nn]othing%', @temp_command)  SELECT @destroy_count = @destroy_count + 1  END  IF(@create_count > @destroy_count)  BEGIN  RAISERROR(14277, -1, -1)  RETURN(1)   END  END  IF (EXISTS (SELECT *  FROM msdb.dbo.sysjobsteps  WHERE (job_id = @job_id)  AND (step_name = @step_name)))  BEGIN  RAISERROR(14261, -1, -1, '@step_name', @step_name)  RETURN(1)   END  IF (@on_success_action <> 1) AND   (@on_success_action <> 2) AND   (@on_success_action <> 3) AND   (@on_success_action <> 4)       BEGIN  RAISERROR(14266, -1, -1, '@on_success_action', '1, 2, 3, 4')  RETURN(1)   END  IF (@on_success_action = 4) AND  ((@on_success_step_id < 1) OR (@on_success_step_id = @step_id))  BEGIN   RAISERROR(14235, -1, -1, '@on_success_step', @step_id)  RETURN(1)   END  IF (@on_fail_action <> 1) AND   (@on_fail_action <> 2) AND   (@on_fail_action <> 3) AND   (@on_fail_action <> 4)       BEGIN  RAISERROR(14266, -1, -1, '@on_failure_action', '1, 2, 3, 4')  RETURN(1)   END  IF (@on_fail_action = 4) AND  ((@on_fail_step_id < 1) OR (@on_fail_step_id = @step_id))  BEGIN   RAISERROR(14235, -1, -1, '@on_failure_step', @step_id)  RETURN(1)   END  IF ((@on_success_action = 4) AND (@on_success_step_id > @max_step_id))  RAISERROR(14236, 0, 1, '@on_success_step_id')  IF ((@on_fail_action = 4) AND (@on_fail_step_id > @max_step_id))  RAISERROR(14236, 0, 1, '@on_fail_step_id')  IF (@server IS NOT NULL) AND (NOT EXISTS (SELECT *  FROM master.dbo.sysservers  WHERE (srvname = @server)))  BEGIN  RAISERROR(14234, -1, -1, '@server', 'sp_helpserver')  RETURN(1)   END   IF (@os_run_priority NOT IN (-15, -1, 0, 1, 15))  BEGIN  RAISERROR(14266, -1, -1, '@os_run_priority', '-15, -1, 0, 1, 15')  RETURN(1)   END  IF ((@flags < 0) OR (@flags > 7))  BEGIN  RAISERROR(14266, -1, -1, '@flags', '0..7')  RETURN(1)   END  IF (@output_file_name IS NOT NULL) AND (UPPER(@subsystem) NOT IN ('TSQL', 'CMDEXEC'))  BEGIN  RAISERROR(14545, -1, -1, '@output_file_name', @subsystem)  RETURN(1)   END  IF (UPPER(@subsystem) = N'CMDEXEC')  SELECT @database_name = NULL,  @database_user_name = NULL  IF (UPPER(@subsystem) <> 'TSQL')  SELECT @database_user_name = NULL  IF (UPPER(@subsystem) = 'TSQL')  BEGIN  SET NOCOUNT ON  IF (@server IS NOT NULL)  SELECT @server = NULL  IF (LTRIM(RTRIM(@database_name)) IS NULL)  SELECT @database_name = N'master'  IF (DB_ID(@database_name) IS NULL)  BEGIN  RAISERROR(14262, -1, -1, '@database_name', @database_name)  RETURN(1)   END  SELECT @owner_login_name = SUSER_SNAME(owner_sid)  FROM msdb.dbo.sysjobs  WHERE (job_id = @job_id)  SELECT @database_user_name = LTRIM(RTRIM(@database_user_name))   IF (ISNULL(IS_SRVROLEMEMBER(N'sysadmin'), 0) = 1)  BEGIN  IF (UPPER(@database_user_name) = N'SA')  SELECT @database_user_name = NULL  IF (@database_user_name IS NOT NULL)  BEGIN  IF (EXISTS (SELECT *  FROM msdb.dbo.sysjobs  sj,  msdb.dbo.sysjobservers sjs  WHERE (sj.job_id = sjs.job_id)  AND (sj.job_id = @job_id)  AND (sjs.server_id <> 0)))  BEGIN  RAISERROR(14542, -1, -1, N'database_user_name')   RETURN(1)   END  END  IF (@database_user_name NOT LIKE N'%\%')  BEGIN  select @NSessionID = CONVERT(varchar(90),SUSER_ID())  delete from SVC_Temp_target_servers where sessionid = @SessionID  INSERT INTO SVC_Temp_target_servers   EXECUTE(N'SELECT ' + @NSessionID + ' COUNT(*),0  FROM ' + @database_name_temp + N'.dbo.sysusers  WHERE (name = N''' + @database_user_name_temp + N''')')  IF (EXISTS (SELECT *   FROM SVC_Temp_target_servers   WHERE (user_count = 0)))  BEGIN  RAISERROR(14262, -1, -1, '@database_user_name', @database_user_name)   RETURN(1)   END  delete from SVC_Temp_target_servers where sessionid = @SessionID   END  END  ELSE  SELECT @database_user_name = NULL  END    RETURN(0)  END  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_verify_jobstep] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_CreateEOD_Job] 
   @iGuid as char(101) 
 AS 
 BEGIN 
   DECLARE @INTERID char(5), @cTime varchar(25), @iSetup varchar(100), @str1 varchar(255), @str2 varchar(255), 
           @t datetime, @hr varchar(2), @min varchar(2), @sec varchar(2), @st varchar(6), @it int 
   SET @INTERID='TLECO'
   SELECT @t = MSO_Settlement_Time, @iSetup = DB_NAME() + ' ' + RTRIM(MSO_Description) FROM MS273501 WHERE MSO_EngineGUID = @iGuid  
   SET @cTime = @t 
   SET @cTime = RTRIM(@cTime) 
   SET @iSetup = RTRIM(@iSetup) 
   SET @hr = DATEPART(hh, @t) 
   SET @hr = RTRIM(@hr) 
   IF (LEN(@hr) = 1) SET @hr = '0' + @hr 
   SET @min = DATEPART(mi, @t) 
   SET @min = RTRIM(@min) 
   IF (LEN(@min) = 1) SET @min = '0' + @min 
   SET @sec = DATEPART(ss, @t) 
   SET @sec = RTRIM(@sec) 
   IF (LEN(@sec) = 1) SET @sec = '0' + @sec 
   SET @st = @hr + @min + @sec 
   SET @it = @st 
  
   BEGIN TRANSACTION 
   DECLARE @JobID binary(16), @ReturnCode int 
   SELECT @ReturnCode = 0 
   IF ((SELECT COUNT(*) FROM msdb.dbo.syscategories WHERE name = N'[Uncategorized (Local)]') < 1) 
     EXECUTE msdb.dbo.sp_add_category @name = N'[Uncategorized (Local)]' 
 	-- Delete jobs with old names 
	SELECT @iSetup = RTRIM(MSO_Description) FROM MS273501 WHERE MSO_EngineGUID = @iGuid 
	 SELECT @JobID = job_id FROM msdb.dbo.sysjobs WHERE (name = N'Nodus End Of Day process for ' + @iSetup)  
   IF (@JobID IS NOT NULL)  
   BEGIN  
     -- Check if the job is a multi-server job   
     IF (EXISTS (SELECT * FROM msdb.dbo.sysjobservers WHERE (job_id = @JobID) AND (server_id <> 0)))  
     BEGIN  
       -- There is, so abort the script  
       SET @str1 = 'Unable to import job ''Nodus End Of Day process for ' + @iSetup + ' since there is already a multi-server job with this name.'  
       RAISERROR (@str1, 16, 1)  
       GOTO QuitWithRollback   
     END  
     ELSE  
     BEGIN  
       -- Delete the [local] job  
       SET @str1 = 'Nodus End Of Day process for ' + @iSetup  
       EXECUTE msdb.dbo.sp_delete_job @job_name = @str1  
       SELECT @JobID = NULL  
     END  
   END  
   SELECT @t = MSO_Settlement_Time, @iSetup = DB_NAME() + ' ' + RTRIM(MSO_Description) FROM MS273501 WHERE MSO_EngineGUID = @iGuid  
   -- Delete the job with the same name (if it exists) 
   SELECT @JobID = job_id FROM msdb.dbo.sysjobs WHERE (name = N'Nodus End Of Day process for ' + @iSetup) 
   IF (@JobID IS NOT NULL) 
   BEGIN 
     -- Check if the job is a multi-server job  
     IF (EXISTS (SELECT * FROM msdb.dbo.sysjobservers WHERE (job_id = @JobID) AND (server_id <> 0))) 
     BEGIN 
       -- There is, so abort the script 
       SET @str1 = 'Unable to import job ''Nodus End Of Day process for ' + @iSetup + ' since there is already a multi-server job with this name.' 
       RAISERROR (@str1, 16, 1) 
       GOTO QuitWithRollback  
     END 
     ELSE 
     BEGIN 
       -- Delete the [local] job 
       SET @str1 = 'Nodus End Of Day process for ' + @iSetup 
       EXECUTE msdb.dbo.sp_delete_job @job_name = @str1 
       SELECT @JobID = NULL 
     END 
   END 
  
   BEGIN 
     -- Add the job 
     SET @str1 = N'Nodus End Of Day process for ' + @iSetup 
     SET @str2 = N'This process will run the Nodus End of Day process for ' + @iSetup + ' from SQL not requiring the user to be logged into Dynamics GP.' 
     EXECUTE @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT 
           , @job_name = @str1 
           , @owner_login_name = N'sa' 
           , @description = @str2 
           , @category_name = N'[Uncategorized (Local)]' 
           , @enabled = 1 
           , @notify_level_email = 0 
           , @notify_level_page = 0 
           , @notify_level_netsend = 0 
           , @notify_level_eventlog = 2 
           , @delete_level= 0 
     IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
     -- Add the job steps 
     SET @str1 = N'EXEC NDS_EndOfDay ''' + RTRIM(@iGuid) + ''', ''' + RTRIM(@cTime) + '''' 
     EXECUTE @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID 
           , @step_id = 1 
           , @step_name = N'Run the End Of Day Routine' 
           , @command = @str1 
           , @database_name = @INTERID  
           , @server = N'' 
           , @database_user_name = N'' 
           , @subsystem = N'TSQL' 
           , @cmdexec_success_code = 0 
           , @flags = 0 
           , @retry_attempts = 0 
           , @retry_interval = 1 
           , @output_file_name = N'' 
           , @on_success_step_id = 0 
           , @on_success_action = 1 
           , @on_fail_step_id = 0 
           , @on_fail_action = 2 
     IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
     EXECUTE @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1 
      
     IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
     -- Add the job schedules 
     EXECUTE @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID 
           , @name = N'Daily Schedule' 
           , @enabled = 1 
           , @freq_type = 4 
           --, @active_start_date = 20071121 
           , @active_start_time = @it 
           , @freq_interval = 1 
           , @freq_subday_type = 1 
           , @freq_subday_interval = 0 
           , @freq_relative_interval = 0 
           , @freq_recurrence_factor = 0 
           , @active_end_date = 99991231 
           , @active_end_time = 235959 
     IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
     -- Add the Target Servers 
     EXECUTE @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'(local)'  
     IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
   END 
   COMMIT TRANSACTION 
   GOTO   EndSave 
  QuitWithRollback: 
   IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION  
  EndSave: 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_CreateEOD_Job] TO [DYNGRP]
GO

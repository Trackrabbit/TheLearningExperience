CREATE TABLE [dbo].[SVC00903]
(
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTME] [datetime] NOT NULL,
[CONTFLAG] [tinyint] NOT NULL,
[Service_Flag] [tinyint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00903_D] ON [dbo].[SVC00903]  FOR DELETE  AS declare @OFFID char(11) declare @StartDate datetime declare @StartTime datetime declare @EndDate datetime declare @EndTime datetime declare @TechID char(11) declare office cursor for   select OFFID,STRTDATE,STRTTIME,ENDDATE,ENDTME  from deleted set nocount on open office fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime  while @@FETCH_STATUS = 0  BEGIN  declare tech cursor for   select TECHID   from SVC00100  where OFFID = @OFFID  open tech  fetch next from tech into @TechID  while @@FETCH_STATUS = 0  BEGIN  delete from SVC00101  where TECHID = @TechID and   STRTDATE = @StartDate and  STRTTIME = @StartTime and  ENDDATE = @EndDate and  ENDTME = @EndTime  fetch next from tech into @TechID  END  deallocate tech  fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime   END deallocate office    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00903_I] ON [dbo].[SVC00903]  FOR INSERT AS declare @OFFID char(11) declare @StartDate datetime declare @StartTime datetime declare @EndDate datetime declare @EndTime datetime declare @TechID char(11) declare office cursor for   select OFFID,STRTDATE,STRTTIME,ENDDATE,ENDTME  from inserted set nocount on open office fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime  while @@FETCH_STATUS = 0  BEGIN  declare tech_office cursor for   select TECHID from SVC00100  where OFFID = @OFFID  open tech_office  fetch next from tech_office into @TechID  while @@FETCH_STATUS = 0  BEGIN  if not exists(  select * from SVC00101  where TECHID = @TechID and   STRTDATE = @StartDate and  STRTTIME = @StartTime and  ENDDATE = @EndDate and  ENDTME = @EndTime  )  BEGIN  insert SVC00101  values(@TechID, @StartDate, @StartTime, @EndDate, @EndTime, 'Holiday', '')  END  fetch next from tech_office into @TechID  END  deallocate tech_office  fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime   END deallocate office    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00903_U] ON [dbo].[SVC00903]  FOR UPDATE  AS declare @OFFID char(11) declare @StartDate datetime declare @StartTime datetime declare @EndDate datetime declare @EndTime datetime declare @TechID char(11) declare office cursor for   select OFFID,STRTDATE,STRTTIME,ENDDATE,ENDTME  from deleted set nocount on open office fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime  while @@FETCH_STATUS = 0  BEGIN  declare tech cursor for   select TECHID   from SVC00100  where OFFID = @OFFID  open tech  fetch next from tech into @TechID  while @@FETCH_STATUS = 0  BEGIN  delete from SVC00101  where TECHID = @TechID and   STRTDATE = @StartDate and  STRTTIME = @StartTime and  ENDDATE = @EndDate and  ENDTME = @EndTime  fetch next from tech into @TechID  END  deallocate tech  fetch next from office into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime   END deallocate office declare officei cursor for   select OFFID,STRTDATE,STRTTIME,ENDDATE,ENDTME  from inserted declare techi cursor for   select TECHID   from SVC00100  where OFFID = @OFFID set nocount on open officei fetch next from officei into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime  while @@FETCH_STATUS = 0  BEGIN  open techi  fetch next from techi into @TechID  while @@FETCH_STATUS = 0  BEGIN  if not exists(  select * from SVC00101  where TECHID = @TechID and   STRTDATE = @StartDate and  STRTTIME = @StartTime and  ENDDATE = @EndDate and  ENDTME = @EndTime  )  BEGIN  insert SVC00101  values(@TechID, @StartDate, @StartTime, @EndDate, @EndTime, 'Holiday', '')  END  fetch next from techi into @TechID  END  deallocate techi  fetch next from officei into @OFFID, @StartDate, @StartTime, @EndDate, @EndTime   END deallocate officei    
GO
ALTER TABLE [dbo].[SVC00903] ADD CONSTRAINT [CK__SVC00903__ENDTME__5319221E] CHECK ((datepart(day,[ENDTME])=(1) AND datepart(month,[ENDTME])=(1) AND datepart(year,[ENDTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00903] ADD CONSTRAINT [CK__SVC00903__STRTTI__55016A90] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00903] ADD CONSTRAINT [CK__SVC00903__ENDDAT__5224FDE5] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00903] ADD CONSTRAINT [CK__SVC00903__STRTDA__540D4657] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00903] ADD CONSTRAINT [PKSVC00903] PRIMARY KEY NONCLUSTERED  ([OFFID], [STRTDATE], [STRTTIME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00903].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00903].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00903].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00903].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00903].[ENDTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00903].[CONTFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00903].[Service_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00903].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC00903] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00903] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00903] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00903] TO [DYNGRP]
GO

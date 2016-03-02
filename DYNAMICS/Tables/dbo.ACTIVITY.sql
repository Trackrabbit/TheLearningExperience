CREATE TABLE [dbo].[ACTIVITY]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ClientUIType] [smallint] NOT NULL,
[LOGINDAT] [datetime] NOT NULL,
[LOGINTIM] [datetime] NOT NULL,
[SQLSESID] [int] NOT NULL,
[Language_ID] [smallint] NOT NULL,
[ClientType] [smallint] NOT NULL,
[IsOffline] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[syVendorAnalysisDeleteTrigger] on [dbo].[ACTIVITY] for delete as  declare @CMPNYNAM VARCHAR(100),  @UserID VARCHAR(100),  @INTERID VARCHAR(5),  @SqlStr VARCHAR(255)  select   @CMPNYNAM = deleted.CMPNYNAM , @UserID = replace(deleted.USERID,'''','''''') from   deleted   SELECT @INTERID = INTERID  FROM SY01500 WHERE CMPNYNAM = @CMPNYNAM set @SqlStr = 'DELETE FROM ' + @INTERID + '..CO00201 WHERE USERID = ''' + RTRIM(@UserID) + ''' '   exec (@SqlStr)    
GO
ALTER TABLE [dbo].[ACTIVITY] ADD CONSTRAINT [CK__ACTIVITY__LOGINT__70210BCE] CHECK ((datepart(day,[LOGINTIM])=(1) AND datepart(month,[LOGINTIM])=(1) AND datepart(year,[LOGINTIM])=(1900)))
GO
ALTER TABLE [dbo].[ACTIVITY] ADD CONSTRAINT [CK__ACTIVITY__LOGIND__6F2CE795] CHECK ((datepart(hour,[LOGINDAT])=(0) AND datepart(minute,[LOGINDAT])=(0) AND datepart(second,[LOGINDAT])=(0) AND datepart(millisecond,[LOGINDAT])=(0)))
GO
ALTER TABLE [dbo].[ACTIVITY] ADD CONSTRAINT [PKACTIVITY] PRIMARY KEY NONCLUSTERED  ([CMPNYNAM], [USERID], [ClientUIType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ACTIVITY] ON [dbo].[ACTIVITY] ([LOGINDAT], [CMPNYNAM], [USERID], [ClientUIType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ACTIVITY] ON [dbo].[ACTIVITY] ([USERID], [CMPNYNAM], [ClientUIType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ACTIVITY].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ACTIVITY].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACTIVITY].[ClientUIType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ACTIVITY].[LOGINDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ACTIVITY].[LOGINTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACTIVITY].[SQLSESID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACTIVITY].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACTIVITY].[ClientType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACTIVITY].[IsOffline]'
GO
GRANT SELECT ON  [dbo].[ACTIVITY] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ACTIVITY] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ACTIVITY] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ACTIVITY] TO [DYNGRP]
GO

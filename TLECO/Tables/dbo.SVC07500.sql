CREATE TABLE [dbo].[SVC07500]
(
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCESSIDLST] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Last_Conn_DATE] [datetime] NOT NULL,
[SVC_Last_Conn_TIME] [datetime] NOT NULL,
[SVC_Last_DisConn_DATE] [datetime] NOT NULL,
[SVC_Last_DisConn_TIME] [datetime] NOT NULL,
[SVC_eTech_Status] [smallint] NOT NULL,
[SVC_MAP_Location1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_MAP_Location2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[SVC_LastAccessDate] [datetime] NOT NULL,
[SVC_LastAccessTime] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__2F30C763] CHECK ((datepart(day,[SVC_Last_Conn_TIME])=(1) AND datepart(month,[SVC_Last_Conn_TIME])=(1) AND datepart(year,[SVC_Last_Conn_TIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__31190FD5] CHECK ((datepart(day,[SVC_Last_DisConn_TIME])=(1) AND datepart(month,[SVC_Last_DisConn_TIME])=(1) AND datepart(year,[SVC_Last_DisConn_TIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__33015847] CHECK ((datepart(day,[SVC_LastAccessTime])=(1) AND datepart(month,[SVC_LastAccessTime])=(1) AND datepart(year,[SVC_LastAccessTime])=(1900)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__2E3CA32A] CHECK ((datepart(hour,[SVC_Last_Conn_DATE])=(0) AND datepart(minute,[SVC_Last_Conn_DATE])=(0) AND datepart(second,[SVC_Last_Conn_DATE])=(0) AND datepart(millisecond,[SVC_Last_Conn_DATE])=(0)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__3024EB9C] CHECK ((datepart(hour,[SVC_Last_DisConn_DATE])=(0) AND datepart(minute,[SVC_Last_DisConn_DATE])=(0) AND datepart(second,[SVC_Last_DisConn_DATE])=(0) AND datepart(millisecond,[SVC_Last_DisConn_DATE])=(0)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [CK__SVC07500__SVC_La__320D340E] CHECK ((datepart(hour,[SVC_LastAccessDate])=(0) AND datepart(minute,[SVC_LastAccessDate])=(0) AND datepart(second,[SVC_LastAccessDate])=(0) AND datepart(millisecond,[SVC_LastAccessDate])=(0)))
GO
ALTER TABLE [dbo].[SVC07500] ADD CONSTRAINT [PKSVC07500] PRIMARY KEY NONCLUSTERED  ([TECHID], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC07500] ON [dbo].[SVC07500] ([TECHID], [ACTIVE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07500].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07500].[ACCESSIDLST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_Last_Conn_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_Last_Conn_TIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_Last_DisConn_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_Last_DisConn_TIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07500].[SVC_eTech_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07500].[SVC_MAP_Location1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07500].[SVC_MAP_Location2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07500].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_LastAccessDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC07500].[SVC_LastAccessTime]'
GO
GRANT SELECT ON  [dbo].[SVC07500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC07500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC07500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC07500] TO [DYNGRP]
GO

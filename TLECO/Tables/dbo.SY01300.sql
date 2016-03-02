CREATE TABLE [dbo].[SY01300]
(
[Process_ID] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Language_ID] [smallint] NOT NULL,
[DPSERIES] [smallint] NOT NULL,
[Load_Factor] [smallint] NOT NULL,
[Service_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [smallint] NOT NULL,
[Queue_Time] [datetime] NOT NULL,
[Queue_Date] [datetime] NOT NULL,
[Recurrance_Interval] [smallint] NOT NULL,
[Script_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deletable] [tinyint] NOT NULL,
[Deletable_When_Running] [tinyint] NOT NULL,
[REMOTE] [tinyint] NOT NULL,
[Begin_Group_Process_Name] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRKPSATV] [tinyint] NOT NULL,
[ServerNotifyScriptName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01300] ADD CONSTRAINT [CK__SY01300__Queue_T__35B2DC69] CHECK ((datepart(day,[Queue_Time])=(1) AND datepart(month,[Queue_Time])=(1) AND datepart(year,[Queue_Time])=(1900)))
GO
ALTER TABLE [dbo].[SY01300] ADD CONSTRAINT [CK__SY01300__Queue_D__34BEB830] CHECK ((datepart(hour,[Queue_Date])=(0) AND datepart(minute,[Queue_Date])=(0) AND datepart(second,[Queue_Date])=(0) AND datepart(millisecond,[Queue_Date])=(0)))
GO
ALTER TABLE [dbo].[SY01300] ADD CONSTRAINT [PKSY01300] PRIMARY KEY NONCLUSTERED  ([Language_ID], [PRODID], [Process_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY01300] ON [dbo].[SY01300] ([DPSERIES], [Language_ID], [PRODID], [Process_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01300] ON [dbo].[SY01300] ([Language_ID], [Begin_Group_Process_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Process_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[DPSERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Load_Factor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01300].[Service_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01300].[Queue_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01300].[Queue_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Recurrance_Interval]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01300].[Script_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Deletable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[Deletable_When_Running]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[REMOTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01300].[Begin_Group_Process_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01300].[TRKPSATV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01300].[ServerNotifyScriptName]'
GO
GRANT SELECT ON  [dbo].[SY01300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01300] TO [DYNGRP]
GO

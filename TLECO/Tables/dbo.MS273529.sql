CREATE TABLE [dbo].[MS273529]
(
[NDS_Failure_Date] [datetime] NOT NULL,
[NDS_Failure_Time] [datetime] NOT NULL,
[NDS_SPID] [smallint] NOT NULL,
[NDS_Email_From] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Email_To] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Subject] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_iMsg] [int] NOT NULL,
[NDS_Hr] [int] NOT NULL,
[NDS_Failure_Source] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Description1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Description2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Output1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Output2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Output3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Output4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Comment] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273529] ADD CONSTRAINT [CK__MS273529__NDS_Fa__07704DF2] CHECK ((datepart(day,[NDS_Failure_Time])=(1) AND datepart(month,[NDS_Failure_Time])=(1) AND datepart(year,[NDS_Failure_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273529] ADD CONSTRAINT [CK__MS273529__NDS_Fa__067C29B9] CHECK ((datepart(hour,[NDS_Failure_Date])=(0) AND datepart(minute,[NDS_Failure_Date])=(0) AND datepart(second,[NDS_Failure_Date])=(0) AND datepart(millisecond,[NDS_Failure_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273529] ADD CONSTRAINT [PKMS273529] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1MS273529] ON [dbo].[MS273529] ([NDS_Failure_Date], [NDS_Failure_Time]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1MS273529] ON [dbo].[MS273529] ([NDS_Failure_Date], [NDS_Failure_Time], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273529].[NDS_Failure_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273529].[NDS_Failure_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273529].[NDS_SPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Email_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Email_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Subject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273529].[NDS_iMsg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273529].[NDS_Hr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Description1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Description2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Output1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Output2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Output3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Output4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273529].[NDS_Failure_Comment]'
GO
GRANT SELECT ON  [dbo].[MS273529] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273529] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273529] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273529] TO [DYNGRP]
GO

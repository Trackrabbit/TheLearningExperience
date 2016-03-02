CREATE TABLE [dbo].[MS273535]
(
[NDS_Date] [datetime] NOT NULL,
[NDS_Time] [datetime] NOT NULL,
[NDS_Stage] [smallint] NOT NULL,
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Doc_Number2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_ErrorCode] [smallint] NOT NULL,
[NDS_Failure_Description1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Failure_Description2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273535] ADD CONSTRAINT [CK__MS273535__NDS_Ti__1D5F8F11] CHECK ((datepart(day,[NDS_Time])=(1) AND datepart(month,[NDS_Time])=(1) AND datepart(year,[NDS_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273535] ADD CONSTRAINT [CK__MS273535__NDS_Da__1C6B6AD8] CHECK ((datepart(hour,[NDS_Date])=(0) AND datepart(minute,[NDS_Date])=(0) AND datepart(second,[NDS_Date])=(0) AND datepart(millisecond,[NDS_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273535] ADD CONSTRAINT [PKMS273535] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1MS273535] ON [dbo].[MS273535] ([NDS_Date], [NDS_Time], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273535].[NDS_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273535].[NDS_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273535].[NDS_Stage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273535].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273535].[NDS_Doc_Number2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273535].[NDS_ErrorCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273535].[NDS_Failure_Description1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273535].[NDS_Failure_Description2]'
GO
GRANT SELECT ON  [dbo].[MS273535] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273535] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273535] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273535] TO [DYNGRP]
GO

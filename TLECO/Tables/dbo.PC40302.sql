CREATE TABLE [dbo].[PC40302]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Base_Step_Increased_On] [smallint] NOT NULL,
[BUDGETED] [tinyint] NOT NULL,
[DEFPERMOPTION] [smallint] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRIMARYPOSSEAT] [tinyint] NOT NULL,
[Step] [smallint] NOT NULL,
[Step_Effective_Date] [datetime] NOT NULL,
[DEFTEMPOPTION] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40302] ADD CONSTRAINT [CK__PC40302__Step_Ef__4D95B686] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[PC40302] ADD CONSTRAINT [PKPC40302] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [PayCode]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PC40302] ON [dbo].[PC40302] ([PLANCODE], [JOBTITLE], [PRIMARYPOSSEAT], [PayCode]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40302].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40302].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40302].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[BUDGETED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[DEFPERMOPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40302].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40302].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[PRIMARYPOSSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40302].[Step_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40302].[DEFTEMPOPTION]'
GO
GRANT SELECT ON  [dbo].[PC40302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40302] TO [DYNGRP]
GO

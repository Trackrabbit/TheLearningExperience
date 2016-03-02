CREATE TABLE [dbo].[PC30302]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQ_I] [int] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[Base_Step_Increased_On] [smallint] NOT NULL,
[BUDGETED] [tinyint] NOT NULL,
[DEFPERMOPTION] [smallint] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRIMARYPOSSEAT] [tinyint] NOT NULL,
[Step] [smallint] NOT NULL,
[Step_Effective_Date] [datetime] NOT NULL,
[DEFTEMPOPTION] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC30302] ADD CONSTRAINT [CK__PC30302__CHANGET__2C34C2BB] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[PC30302] ADD CONSTRAINT [CK__PC30302__CHANGED__2B409E82] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC30302] ADD CONSTRAINT [CK__PC30302__Step_Ef__2D28E6F4] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[PC30302] ADD CONSTRAINT [PKPC30302] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [PayCode], [CHANGEDATE_I], [SEQ_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30302].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30302].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[BUDGETED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[DEFPERMOPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30302].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[PRIMARYPOSSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30302].[Step_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30302].[DEFTEMPOPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30302].[CHANGEREASON_I]'
GO
GRANT SELECT ON  [dbo].[PC30302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC30302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC30302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC30302] TO [DYNGRP]
GO

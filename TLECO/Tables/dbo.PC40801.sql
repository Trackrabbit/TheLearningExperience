CREATE TABLE [dbo].[PC40801]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEAT] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Base_Step_Increased_On] [smallint] NOT NULL,
[PayCodeCB] [tinyint] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Step] [smallint] NOT NULL,
[Step_Effective_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40801] ADD CONSTRAINT [CK__PC40801__Step_Ef__6849ACC2] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[PC40801] ADD CONSTRAINT [PKPC40801] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [SEAT], [SEQNUMBR], [PayCode]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40801].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40801].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40801].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40801].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40801].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40801].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40801].[PayCodeCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40801].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40801].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40801].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40801].[Step_Effective_Date]'
GO
GRANT SELECT ON  [dbo].[PC40801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40801] TO [DYNGRP]
GO

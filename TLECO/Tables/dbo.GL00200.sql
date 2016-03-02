CREATE TABLE [dbo].[GL00200]
(
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUDCOMNT] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUDPWRD] [binary] (16) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[Based_On] [smallint] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL00200__DEX_ROW__54CB950F] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL00200U] ON [dbo].[GL00200] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.GL00200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL00200, inserted WHERE GL00200.BUDGETID = inserted.BUDGETID END set nocount off    
GO
ALTER TABLE [dbo].[GL00200] ADD CONSTRAINT [CK__GL00200__From_Da__59904A2C] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[GL00200] ADD CONSTRAINT [CK__GL00200__TODATE__5A846E65] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[GL00200] ADD CONSTRAINT [PKGL00200] PRIMARY KEY NONCLUSTERED  ([BUDGETID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL00200] ON [dbo].[GL00200] ([BUDCOMNT], [BUDGETID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL00200] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00200].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00200].[BUDCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00200].[BUDPWRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00200].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00200].[Based_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00200].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00200].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00200].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[GL00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL00200] TO [DYNGRP]
GO

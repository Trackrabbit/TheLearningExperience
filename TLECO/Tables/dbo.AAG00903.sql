CREATE TABLE [dbo].[AAG00903]
(
[aaBudgetID] [int] NOT NULL,
[aaBudget] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBudgetDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBudgetTreeID] [int] NOT NULL,
[Based_On] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[BUDPWRD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBudgetRollUp] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG00903__DEX_RO__6C190EBB] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG00903U] ON [dbo].[AAG00903] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG00903 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG00903, inserted WHERE AAG00903.aaBudgetID = inserted.aaBudgetID END set nocount off    
GO
ALTER TABLE [dbo].[AAG00903] ADD CONSTRAINT [CK__AAG00903__From_D__797EC228] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[AAG00903] ADD CONSTRAINT [CK__AAG00903__TODATE__7A72E661] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[AAG00903] ADD CONSTRAINT [PKAAG00903] PRIMARY KEY CLUSTERED  ([aaBudgetID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00903] ON [dbo].[AAG00903] ([aaBudget], [YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00903].[aaBudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00903].[aaBudget]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00903].[aaBudgetDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00903].[aaBudgetTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00903].[Based_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00903].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00903].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00903].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00903].[BUDPWRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00903].[aaBudgetRollUp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00903].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00903] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00903] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00903] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00903] TO [DYNGRP]
GO

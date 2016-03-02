CREATE TABLE [dbo].[B2910100]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[BSSI_Late_Fee_Amount] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Status] [smallint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2910100] ADD CONSTRAINT [CK__B2910100__DOCDAT__177F941B] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2910100] ADD CONSTRAINT [PKB2910100] PRIMARY KEY NONCLUSTERED  ([DOCNUMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2910100] ON [dbo].[B2910100] ([SCHEDULE_NUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2910100] ON [dbo].[B2910100] ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2910100].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2910100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2910100].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2910100].[BSSI_Late_Fee_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2910100].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2910100].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2910100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2910100].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2910100].[VOIDSTTS]'
GO
GRANT SELECT ON  [dbo].[B2910100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2910100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2910100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2910100] TO [DYNGRP]
GO

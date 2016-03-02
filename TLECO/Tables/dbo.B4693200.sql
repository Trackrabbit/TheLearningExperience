CREATE TABLE [dbo].[B4693200]
(
[BSSIChargeRateScheduleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Cost_Driver_Option] [smallint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_EscalateEffective] [tinyint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4693200] ADD CONSTRAINT [CK__B4693200__TIME1__0A1155BB] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B4693200] ADD CONSTRAINT [CK__B4693200__DATE1__091D3182] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4693200] ADD CONSTRAINT [PKB4693200] PRIMARY KEY NONCLUSTERED  ([BSSIChargeRateScheduleID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4693200] ON [dbo].[B4693200] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4693200].[BSSIChargeRateScheduleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693200].[BSSI_Cost_Driver_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4693200].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4693200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4693200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4693200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4693200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693200].[BSSI_EscalateEffective]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693200].[BSSI_Dummy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693200].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B4693200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4693200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4693200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4693200] TO [DYNGRP]
GO

CREATE TABLE [dbo].[B0510165]
(
[YEAR1] [smallint] NOT NULL,
[MJW_Last_Day_Period] [datetime] NOT NULL,
[BSSI_Num_Periods_Yearly] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510165] ADD CONSTRAINT [CK__B0510165__MJW_La__0FB45521] CHECK ((datepart(hour,[MJW_Last_Day_Period])=(0) AND datepart(minute,[MJW_Last_Day_Period])=(0) AND datepart(second,[MJW_Last_Day_Period])=(0) AND datepart(millisecond,[MJW_Last_Day_Period])=(0)))
GO
ALTER TABLE [dbo].[B0510165] ADD CONSTRAINT [PKB0510165] PRIMARY KEY CLUSTERED  ([YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510165].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510165].[MJW_Last_Day_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510165].[BSSI_Num_Periods_Yearly]'
GO
GRANT SELECT ON  [dbo].[B0510165] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510165] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510165] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510165] TO [DYNGRP]
GO

CREATE TABLE [dbo].[B2900001]
(
[SETUPKEY] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[BSSI_Hours] [smallint] NOT NULL,
[BSSI_Rev_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900001] ADD CONSTRAINT [CK__B2900001__TIME1__3CC62763] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B2900001] ADD CONSTRAINT [PKB2900001] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900001].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900001].[BSSI_Hours]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900001].[BSSI_Rev_Source_ID]'
GO
GRANT SELECT ON  [dbo].[B2900001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900001] TO [DYNGRP]
GO

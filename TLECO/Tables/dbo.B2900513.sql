CREATE TABLE [dbo].[B2900513]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ImportID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeductionMethod] [smallint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeductionFrequency] [smallint] NOT NULL,
[BSSI_PayPeriodOption] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900513] ADD CONSTRAINT [PKB2900513] PRIMARY KEY NONCLUSTERED  ([USERID], [BSSI_ImportID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900513].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900513].[BSSI_ImportID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900513].[BSSI_DeductionMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900513].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900513].[BSSI_DeductionFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900513].[BSSI_PayPeriodOption]'
GO
GRANT SELECT ON  [dbo].[B2900513] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900513] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900513] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900513] TO [DYNGRP]
GO

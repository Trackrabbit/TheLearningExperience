CREATE TABLE [dbo].[B2920990]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[BSSI_IsAccountSubs] [tinyint] NOT NULL,
[BSSI_IsIntercompany] [tinyint] NOT NULL,
[BSSI_IsProcessed] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920990] ADD CONSTRAINT [PKB2920990] PRIMARY KEY NONCLUSTERED  ([DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920990].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920990].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920990].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920990].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920990].[BSSI_IsAccountSubs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920990].[BSSI_IsIntercompany]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920990].[BSSI_IsProcessed]'
GO
GRANT SELECT ON  [dbo].[B2920990] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920990] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920990] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920990] TO [DYNGRP]
GO

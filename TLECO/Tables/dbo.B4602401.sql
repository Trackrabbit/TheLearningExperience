CREATE TABLE [dbo].[B4602401]
(
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Term_Option] [smallint] NOT NULL,
[BSSI_Renewal_Option_Qty] [int] NOT NULL,
[BSSI_Renewal_Option_Mont] [int] NOT NULL,
[BSSI_Renewal_Option_Year] [int] NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602401] ADD CONSTRAINT [PKB4602401] PRIMARY KEY NONCLUSTERED  ([BSSI_Term], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602401] ON [dbo].[B4602401] ([BSSI_Term], [BSSI_Term_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602401].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[BSSI_Term_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[BSSI_Renewal_Option_Qty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[BSSI_Renewal_Option_Mont]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[BSSI_Renewal_Option_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602401].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602401].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602401] TO [DYNGRP]
GO

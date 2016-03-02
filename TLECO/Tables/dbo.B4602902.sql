CREATE TABLE [dbo].[B4602902]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Equipment_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602902] ADD CONSTRAINT [PKB4602902] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602902] ON [dbo].[B4602902] ([BSSI_Ground_Lease_Number], [BSSI_Equipment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602902].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602902].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602902].[BSSI_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602902].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602902] TO [DYNGRP]
GO

CREATE TABLE [dbo].[B0500100]
(
[LNITMSEQ] [int] NOT NULL,
[BSSI_FromUnits] [numeric] (19, 5) NOT NULL,
[BSSI_ToUnits] [numeric] (19, 5) NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0500100] ADD CONSTRAINT [PKB0500100] PRIMARY KEY NONCLUSTERED  ([LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0500100].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0500100].[BSSI_FromUnits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0500100].[BSSI_ToUnits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500100].[MJW_Series_ID]'
GO
GRANT SELECT ON  [dbo].[B0500100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0500100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0500100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0500100] TO [DYNGRP]
GO

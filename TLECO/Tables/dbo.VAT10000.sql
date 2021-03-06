CREATE TABLE [dbo].[VAT10000]
(
[TCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXCOMDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SUPUNTREQD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VAT10000] ADD CONSTRAINT [PKVAT10000] PRIMARY KEY NONCLUSTERED  ([TCC]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2VAT10000] ON [dbo].[VAT10000] ([TAXCOMDESC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10000].[TCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10000].[TAXCOMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10000].[SUPUNTREQD]'
GO
GRANT SELECT ON  [dbo].[VAT10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[VAT10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[VAT10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[VAT10000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[VAT10000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[VAT10000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[VAT10000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[VAT10000] TO [RAPIDGRP]
GO

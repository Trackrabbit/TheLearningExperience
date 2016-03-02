CREATE TABLE [dbo].[B9000000]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_UseINVMGR] [tinyint] NOT NULL,
[BSSI_UseLeaseLoan] [tinyint] NOT NULL,
[BSSI_DefPDFWriter] [smallint] NOT NULL,
[BSSI_PrintOptions] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000000] ADD CONSTRAINT [PKB9000000] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000000].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000000].[BSSI_UseINVMGR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000000].[BSSI_UseLeaseLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000000].[BSSI_DefPDFWriter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000000].[BSSI_PrintOptions]'
GO
GRANT SELECT ON  [dbo].[B9000000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000000] TO [DYNGRP]
GO

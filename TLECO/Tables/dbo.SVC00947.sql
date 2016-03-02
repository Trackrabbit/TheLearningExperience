CREATE TABLE [dbo].[SVC00947]
(
[SVC_Tech_Inventory_ID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[QTY_Required] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00947] ADD CONSTRAINT [PKSVC00947] PRIMARY KEY NONCLUSTERED  ([SVC_Tech_Inventory_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00947] ON [dbo].[SVC00947] ([SVC_Tech_Inventory_ID], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00947].[SVC_Tech_Inventory_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00947].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00947].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00947].[QTY_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00947].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00947].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC00947] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00947] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00947] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00947] TO [DYNGRP]
GO

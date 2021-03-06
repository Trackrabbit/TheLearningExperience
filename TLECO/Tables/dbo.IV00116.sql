CREATE TABLE [dbo].[IV00116]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PrintPhaseComp] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00116] ADD CONSTRAINT [PKIV00116] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00116].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00116].[PrintPhaseComp]'
GO
GRANT SELECT ON  [dbo].[IV00116] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00116] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00116] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00116] TO [DYNGRP]
GO

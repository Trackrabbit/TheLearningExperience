CREATE TABLE [dbo].[UPR40801]
(
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BORCDTYP] [smallint] NOT NULL,
[BSDONCDE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40801] ADD CONSTRAINT [PKUPR40801] PRIMARY KEY NONCLUSTERED  ([BENEFIT], [BORCDTYP], [BSDONCDE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40801] ON [dbo].[UPR40801] ([BORCDTYP], [BSDONCDE], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40801].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40801].[BORCDTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40801].[BSDONCDE]'
GO
GRANT SELECT ON  [dbo].[UPR40801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40801] TO [DYNGRP]
GO
CREATE TABLE [dbo].[ME240444]
(
[CMPANYID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEEFTOPTIONS] [smallint] NOT NULL,
[MEEFTREMFRMT] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240444] ADD CONSTRAINT [PKME240444] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240444].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240444].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240444].[MEEFTOPTIONS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240444].[MEEFTREMFRMT]'
GO
GRANT SELECT ON  [dbo].[ME240444] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240444] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240444] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240444] TO [DYNGRP]
GO
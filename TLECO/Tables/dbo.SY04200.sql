CREATE TABLE [dbo].[SY04200]
(
[CMTSRIES] [smallint] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04200] ADD CONSTRAINT [PKSY04200] PRIMARY KEY NONCLUSTERED  ([COMMNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04200] ON [dbo].[SY04200] ([CMTSRIES], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04200].[CMTSRIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04200].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY04200].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SY04200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY04200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY04200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY04200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY04200] TO [RAPIDGRP]
GO

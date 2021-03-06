CREATE TABLE [dbo].[SOP10108]
(
[PRCGRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DESCEXPR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10108] ADD CONSTRAINT [PKSOP10108] PRIMARY KEY CLUSTERED  ([PRCGRPID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10108] ON [dbo].[SOP10108] ([DESCEXPR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10108].[PRCGRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10108].[DESCEXPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10108].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10108].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10108].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10108].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SOP10108] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10108] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10108] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10108] TO [DYNGRP]
GO

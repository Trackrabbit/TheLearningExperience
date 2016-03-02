CREATE TABLE [dbo].[SVC00851]
(
[ECO_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[RCRDTYPE] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00851] ADD CONSTRAINT [PKSVC00851] PRIMARY KEY NONCLUSTERED  ([ECO_Number], [RCRDTYPE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00851].[ECO_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00851].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00851].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00851].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00851].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00851].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00851].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00851].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00851].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00851].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00851].[XTNDPRCE]'
GO
GRANT SELECT ON  [dbo].[SVC00851] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00851] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00851] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00851] TO [DYNGRP]
GO

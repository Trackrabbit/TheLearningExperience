CREATE TABLE [dbo].[IF000003]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[ORTRXDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrigSeqNum] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IF000003] ADD CONSTRAINT [PKIF000003] PRIMARY KEY CLUSTERED  ([USERID], [BACHNUMB], [BCHSOURC], [JRNENTRY], [ACTINDX], [ORCTRNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000003].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000003].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IF000003].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IF000003].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IF000003].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000003].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000003].[ORTRXDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000003].[OrigSeqNum]'
GO
GRANT SELECT ON  [dbo].[IF000003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IF000003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IF000003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IF000003] TO [DYNGRP]
GO

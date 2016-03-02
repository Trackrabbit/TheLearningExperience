CREATE TABLE [dbo].[UPR41301]
(
[TAXCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXFLGSTS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LINCLIM] [numeric] (19, 5) NOT NULL,
[PRSEXAMT] [numeric] (19, 5) NOT NULL,
[INCPSNEX] [tinyint] NOT NULL,
[INCADALW] [tinyint] NOT NULL,
[INCLDEPN] [tinyint] NOT NULL,
[FDTXPRCT] [int] NOT NULL,
[FEDTXMAX] [numeric] (19, 5) NOT NULL,
[FICATXPT] [int] NOT NULL,
[FICATXMN] [numeric] (19, 5) NOT NULL,
[FLATAXRT] [int] NOT NULL,
[STDDMTHD] [smallint] NOT NULL,
[STDDPCNT] [int] NOT NULL,
[STDDEDAM] [numeric] (19, 5) NOT NULL,
[STDEDMIN] [numeric] (19, 5) NOT NULL,
[STDEDMAX] [numeric] (19, 5) NOT NULL,
[SPCLEXAM] [numeric] (19, 5) NOT NULL,
[SPCLSDED] [numeric] (19, 5) NOT NULL,
[SPCLTXRT] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41301] ADD CONSTRAINT [PKUPR41301] PRIMARY KEY NONCLUSTERED  ([TAXCODE], [TXFLGSTS]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41301].[TAXCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41301].[TXFLGSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41301].[STSDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[LINCLIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[PRSEXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[INCPSNEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[INCADALW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[INCLDEPN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[FDTXPRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[FEDTXMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[FICATXPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[FICATXMN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[FLATAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[STDDMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[STDDPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[STDDEDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[STDEDMIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[STDEDMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[SPCLEXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41301].[SPCLSDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41301].[SPCLTXRT]'
GO
GRANT SELECT ON  [dbo].[UPR41301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41301] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR41301] TO [rpt_all user]
GO

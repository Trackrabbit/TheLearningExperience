CREATE TABLE [dbo].[UPR41400]
(
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LCLTXCAL_1] [smallint] NOT NULL,
[LCLTXCAL_2] [smallint] NOT NULL,
[LCLTXCAL_3] [smallint] NOT NULL,
[LCLTXCAL_4] [smallint] NOT NULL,
[LCLTXCAL_5] [smallint] NOT NULL,
[EXMTAMNT] [numeric] (19, 5) NOT NULL,
[MNTXBLWG] [numeric] (19, 5) NOT NULL,
[MYTDTXWG] [numeric] (19, 5) NOT NULL,
[LCLTAXRT] [int] NOT NULL,
[LCLTXAMT] [numeric] (19, 5) NOT NULL,
[MAXPERYR] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[STDDMTHD] [smallint] NOT NULL,
[STDDPCNT] [int] NOT NULL,
[STDDEDAM] [numeric] (19, 5) NOT NULL,
[STDEDMAX] [numeric] (19, 5) NOT NULL,
[STDEDMIN] [numeric] (19, 5) NOT NULL,
[TAXTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41400] ADD CONSTRAINT [PKUPR41400] PRIMARY KEY NONCLUSTERED  ([LOCALTAX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41400] ON [dbo].[UPR41400] ([DSCRIPTN], [LOCALTAX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41400].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41400].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTXCAL_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTXCAL_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTXCAL_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTXCAL_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTXCAL_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[EXMTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[MNTXBLWG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[MYTDTXWG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[LCLTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[LCLTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[MAXPERYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[STDDMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[STDDPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[STDDEDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[STDEDMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41400].[STDEDMIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41400].[TAXTYPE]'
GO
GRANT SELECT ON  [dbo].[UPR41400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41400] TO [DYNGRP]
GO

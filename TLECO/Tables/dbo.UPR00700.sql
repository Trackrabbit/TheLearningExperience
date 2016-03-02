CREATE TABLE [dbo].[UPR00700]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXFLGSTS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXMFBLND] [tinyint] NOT NULL,
[EXFBLSPS] [tinyint] NOT NULL,
[EXFORO65] [tinyint] NOT NULL,
[EXMFRSLF] [tinyint] NOT NULL,
[EXMFSPAL] [tinyint] NOT NULL,
[EXMFRSPS] [tinyint] NOT NULL,
[EXFSPO65] [tinyint] NOT NULL,
[PRSNEXPT] [smallint] NOT NULL,
[DEPNDNTS] [smallint] NOT NULL,
[ADNLALOW] [smallint] NOT NULL,
[ESTDEDAL] [smallint] NOT NULL,
[EXMTAMNT] [numeric] (19, 5) NOT NULL,
[ADSTWHDG] [numeric] (19, 5) NOT NULL,
[ESTSTWHD] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00700] ADD CONSTRAINT [PKUPR00700] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [STATECD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00700] ON [dbo].[UPR00700] ([STATECD], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00700].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00700].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00700].[TXFLGSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXMFBLND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXFBLSPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXFORO65]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXMFRSLF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXMFSPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXMFRSPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[EXFSPO65]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[PRSNEXPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[DEPNDNTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[ADNLALOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[ESTDEDAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00700].[EXMTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00700].[ADSTWHDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00700].[ESTSTWHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00700].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00700].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00700] TO [DYNGRP]
GO

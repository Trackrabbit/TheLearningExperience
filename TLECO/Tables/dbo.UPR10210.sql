CREATE TABLE [dbo].[UPR10210]
(
[BLDCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPPYRN] [smallint] NOT NULL,
[PYRNSTDT] [datetime] NOT NULL,
[PYRNENDT] [datetime] NOT NULL,
[EMPCLRNG] [smallint] NOT NULL,
[STTEMPCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENEMPCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPIDRNG] [smallint] NOT NULL,
[STTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNIWLY] [tinyint] NOT NULL,
[PYRNIBWK] [tinyint] NOT NULL,
[PRNISMLY] [tinyint] NOT NULL,
[PYRNIMLY] [tinyint] NOT NULL,
[PYRNIQLY] [tinyint] NOT NULL,
[PYRNISAN] [tinyint] NOT NULL,
[PYRNIANN] [tinyint] NOT NULL,
[PYRNIDMS] [tinyint] NOT NULL,
[PYRNISRY] [tinyint] NOT NULL,
[PYRNIPSN] [tinyint] NOT NULL,
[PYRNIEIC] [tinyint] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[PYRNIPTP] [smallint] NOT NULL,
[PYRNIDED] [smallint] NOT NULL,
[PYRNIBFT] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10210] ADD CONSTRAINT [CK__UPR10210__PYRNEN__326C5B6A] CHECK ((datepart(hour,[PYRNENDT])=(0) AND datepart(minute,[PYRNENDT])=(0) AND datepart(second,[PYRNENDT])=(0) AND datepart(millisecond,[PYRNENDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10210] ADD CONSTRAINT [CK__UPR10210__PYRNST__33607FA3] CHECK ((datepart(hour,[PYRNSTDT])=(0) AND datepart(minute,[PYRNSTDT])=(0) AND datepart(second,[PYRNSTDT])=(0) AND datepart(millisecond,[PYRNSTDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10210] ADD CONSTRAINT [PKUPR10210] PRIMARY KEY NONCLUSTERED  ([BLDCHDID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10210] ON [dbo].[UPR10210] ([DSCRIPTN], [BLDCHDID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[BLDCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[COMPPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10210].[PYRNSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10210].[PYRNENDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[EMPCLRNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[STTEMPCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[ENEMPCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[EMPIDRNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[STTEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10210].[ENDEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIWLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIBWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PRNISMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIQLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNISAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIANN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIDMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNISRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIPSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIEIC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIPTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10210].[PYRNIBFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10210].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR10210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10210] TO [DYNGRP]
GO

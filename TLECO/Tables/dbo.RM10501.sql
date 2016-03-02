CREATE TABLE [dbo].[RM10501]
(
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMTRSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCTOSAL] [smallint] NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[POSTED] [tinyint] NOT NULL,
[COMMPAID] [tinyint] NOT NULL,
[COMMDEST] [smallint] NOT NULL,
[ORCOMAMT] [numeric] (19, 5) NOT NULL,
[ORNCMAMT] [numeric] (19, 5) NOT NULL,
[ORSLSAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM10501] ADD CONSTRAINT [PKRM10501] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM10501] ON [dbo].[RM10501] ([COMTRSRC], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM10501] ON [dbo].[RM10501] ([RMDTYPAL], [DOCNUMBR], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM10501] ON [dbo].[RM10501] ([SALSTERR], [RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM10501] ON [dbo].[RM10501] ([SLPRSNID], [RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[NCOMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[COMTRSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10501].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[PRCTOSAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[COMMPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[COMMDEST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[ORNCMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10501].[ORSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10501].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[RM10501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM10501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM10501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM10501] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM10501] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM10501] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM10501] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM10501] TO [RAPIDGRP]
GO

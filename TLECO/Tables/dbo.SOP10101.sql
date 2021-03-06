CREATE TABLE [dbo].[SOP10101]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[COMMAMNT] [numeric] (19, 5) NOT NULL,
[OCOMMAMT] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[ORNCMAMT] [numeric] (19, 5) NOT NULL,
[PRCTOSAL] [smallint] NOT NULL,
[ACTSLAMT] [numeric] (19, 5) NOT NULL,
[ORSLSAMT] [numeric] (19, 5) NOT NULL,
[CMMSLAMT] [numeric] (19, 5) NOT NULL,
[ORCOSAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10101] ADD CONSTRAINT [PKSOP10101] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10101] ON [dbo].[SOP10101] ([SALSTERR], [SOPTYPE], [SOPNUMBE], [SLPRSNID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10101] ON [dbo].[SOP10101] ([SLPRSNID], [SOPTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SOP10101] ON [dbo].[SOP10101] ([TRXSORCE], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10101].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10101].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10101].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10101].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10101].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[COMMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[OCOMMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[NCOMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[ORNCMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10101].[PRCTOSAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[ACTSLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[ORSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[CMMSLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10101].[ORCOSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10101].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10101].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[SOP10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10101] TO [RAPIDGRP]
GO

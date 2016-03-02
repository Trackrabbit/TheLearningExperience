CREATE TABLE [dbo].[PM00202]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[AMBLDLIF] [numeric] (19, 5) NOT NULL,
[AMTPDLIF] [numeric] (19, 5) NOT NULL,
[TEN99ALIF] [numeric] (19, 5) NOT NULL,
[DISAVLIF] [numeric] (19, 5) NOT NULL,
[DISTKNLF] [numeric] (19, 5) NOT NULL,
[DISLSTLF] [numeric] (19, 5) NOT NULL,
[FINCHLIF] [numeric] (19, 5) NOT NULL,
[WROFSLIF] [numeric] (19, 5) NOT NULL,
[RTRNSLIF] [numeric] (19, 5) NOT NULL,
[TRDTKLIF] [numeric] (19, 5) NOT NULL,
[NFNCHLIF] [int] NOT NULL,
[NOINVLIF] [int] NOT NULL,
[Withholding_LIFE] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM00202] ADD CONSTRAINT [PKPM00202] PRIMARY KEY NONCLUSTERED  ([HISTTYPE], [VENDORID], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM00202] ON [dbo].[PM00202] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00202].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00202].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00202].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00202].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[AMBLDLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[AMTPDLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[TEN99ALIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[DISAVLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[DISTKNLF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[DISLSTLF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[FINCHLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[WROFSLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[RTRNSLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[TRDTKLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00202].[NFNCHLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00202].[NOINVLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00202].[Withholding_LIFE]'
GO
GRANT SELECT ON  [dbo].[PM00202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00202] TO [DYNGRP]
GO

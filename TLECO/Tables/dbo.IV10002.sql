CREATE TABLE [dbo].[IV10002]
(
[IVDOCNBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCTYP] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[OVRSERLT] [smallint] NOT NULL,
[QTYSCRAPPED] [numeric] (19, 5) NOT NULL,
[FROMBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10002] ADD CONSTRAINT [CK__IV10002__DATEREC__2B5F6B28] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[IV10002] ADD CONSTRAINT [CK__IV10002__EXPNDAT__2C538F61] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10002] ADD CONSTRAINT [CK__IV10002__MFGDATE__2D47B39A] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10002] ADD CONSTRAINT [PKIV10002] PRIMARY KEY NONCLUSTERED  ([IVDOCTYP], [IVDOCNBR], [LNSEQNBR], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10002] ON [dbo].[IV10002] ([ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV10002] ON [dbo].[IV10002] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10002].[IVDOCNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10002].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10002].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10002].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10002].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10002].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10002].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10002].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10002].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10002].[OVRSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10002].[QTYSCRAPPED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10002].[FROMBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10002].[TOBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10002].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10002].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[IV10002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10002] TO [DYNGRP]
GO

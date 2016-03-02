CREATE TABLE [dbo].[SVC00710]
(
[SRCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRCDOCTYP] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[TRNSFLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYBACKO] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[TRNSFQTY] [numeric] (19, 5) NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNFLAG] [tinyint] NOT NULL,
[SVC_Disable_XFR_Grouping] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGNBR] [smallint] NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTX2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Address_Option] [smallint] NOT NULL,
[SVC_Misc_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00710] ADD CONSTRAINT [CK__SVC00710__PRMDAT__2BFF54FD] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00710] ADD CONSTRAINT [PKSVC00710] PRIMARY KEY CLUSTERED  ([LOCNCODE], [LINITMTYP], [SRCDOCTYP], [SRCDOCNUM], [ITEMNMBR], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00710] ON [dbo].[SVC00710] ([OFFID], [LINITMTYP], [SRCDOCTYP], [SRCDOCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00710] ON [dbo].[SVC00710] ([STATIONID], [LINITMTYP], [SRCDOCTYP], [SRCDOCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00710] ON [dbo].[SVC00710] ([TECHID], [LINITMTYP], [SRCDOCTYP], [SRCDOCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00710] ON [dbo].[SVC00710] ([USERID], [MKDTOPST], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00710] ON [dbo].[SVC00710] ([USERID], [MKDTOPST], [SRCDOCNUM], [SRCDOCTYP], [ITEMNMBR], [LNITMSEQ], [LOCNCODE], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00710] ON [dbo].[SVC00710] ([USERID], [TRNFLAG], [LOCNCODE], [SRCDOCNUM], [SRCDOCTYP], [ITEMNMBR], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[SRCDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00710].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[TRNSFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00710].[QTYBACKO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00710].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00710].[TRNSFQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[TRNFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[SVC_Disable_XFR_Grouping]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[ERMSGNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[ERMSGTX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[SVC_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[SVC_Misc_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00710].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00710].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00710].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC00710] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00710] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00710] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00710] TO [DYNGRP]
GO

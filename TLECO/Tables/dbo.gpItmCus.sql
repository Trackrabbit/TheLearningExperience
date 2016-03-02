CREATE TABLE [dbo].[gpItmCus]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[QTYTOINV] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gpItmCus] ADD CONSTRAINT [CK__gpItmCus__DOCDAT__484CE8A8] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[gpItmCus] ADD CONSTRAINT [PKgpItmCus] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [ITEMNMBR], [UOFM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5gpItmCus] ON [dbo].[gpItmCus] ([CUSTNMBR], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6gpItmCus] ON [dbo].[gpItmCus] ([CUSTNMBR], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3gpItmCus] ON [dbo].[gpItmCus] ([CUSTNMBR], [ITEMDESC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4gpItmCus] ON [dbo].[gpItmCus] ([CUSTNMBR], [ITEMDESC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2gpItmCus] ON [dbo].[gpItmCus] ([CUSTNMBR], [ITEMNMBR], [UOFM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpItmCus].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpItmCus].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpItmCus].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gpItmCus].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gpItmCus].[QTYTOINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpItmCus].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gpItmCus].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpItmCus].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpItmCus].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpItmCus].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpItmCus].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpItmCus].[DECPLCUR]'
GO
GRANT SELECT ON  [dbo].[gpItmCus] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gpItmCus] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gpItmCus] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gpItmCus] TO [DYNGRP]
GO

CREATE TABLE [dbo].[SVC00906]
(
[WARRCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRNTYDYS] [smallint] NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[Addl_Pct] [numeric] (19, 5) NOT NULL,
[Vendor_Authorization] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETADAYS] [smallint] NOT NULL,
[Vendor_Location_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Create_PO] [tinyint] NOT NULL,
[METER1] [int] NOT NULL,
[METER2] [int] NOT NULL,
[METER3] [int] NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Vendor_Parts_Amount] [numeric] (19, 5) NOT NULL,
[Vendor_Parts_Dollar_or_P] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Vendor_Labor_Amount] [numeric] (19, 5) NOT NULL,
[Vendor_Labor_Dollar_or_P] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Vendor_Addl_Amount] [numeric] (19, 5) NOT NULL,
[Vendor_Addl_Dollar_or_Pc] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00906] ADD CONSTRAINT [PKSVC00906] PRIMARY KEY CLUSTERED  ([WARRCDE], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00906] ON [dbo].[SVC00906] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00906] ON [dbo].[SVC00906] ([VENDORID], [WARRCDE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00906] ON [dbo].[SVC00906] ([WARRCDE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[WARRCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[WRNTYDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[Addl_Pct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[Vendor_Authorization]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[ETADAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[Vendor_Location_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[Create_PO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[METER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[METER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00906].[METER3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[Vendor_Parts_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[Vendor_Parts_Dollar_or_P]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[Vendor_Labor_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[Vendor_Labor_Dollar_or_P]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00906].[Vendor_Addl_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[Vendor_Addl_Dollar_or_Pc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00906].[VENDORID]'
GO
GRANT SELECT ON  [dbo].[SVC00906] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00906] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00906] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00906] TO [DYNGRP]
GO

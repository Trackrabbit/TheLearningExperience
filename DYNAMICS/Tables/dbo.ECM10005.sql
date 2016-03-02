CREATE TABLE [dbo].[ECM10005]
(
[CompanyID] [int] NOT NULL,
[ReqID] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SequenceID] [int] NOT NULL,
[Item] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GenericDescription] [char] (53) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Price] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExtPrice] [numeric] (19, 5) NOT NULL,
[QuantityDecimals] [smallint] NOT NULL,
[PriceDecimals] [smallint] NOT NULL,
[AccountIndex] [int] NOT NULL,
[ReqVendor] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VendorName] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SiteID] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PONumber] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POOrd] [smallint] NOT NULL,
[ConsolidatedReq] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ItemComment] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ErrorMsg] [char] (53) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RequiredBy] [datetime] NOT NULL,
[UofM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ItemText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM10005] ADD CONSTRAINT [CK__ECM10005__Requir__4277DAAA] CHECK ((datepart(hour,[RequiredBy])=(0) AND datepart(minute,[RequiredBy])=(0) AND datepart(second,[RequiredBy])=(0) AND datepart(millisecond,[RequiredBy])=(0)))
GO
ALTER TABLE [dbo].[ECM10005] ADD CONSTRAINT [PKECM10005] PRIMARY KEY CLUSTERED  ([CompanyID], [ReqID], [SequenceID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[ReqID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[SequenceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[GenericDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ECM10005].[ExtPrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[QuantityDecimals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[PriceDecimals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[AccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[ReqVendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[VendorName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[SiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[PONumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10005].[POOrd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[ConsolidatedReq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[ItemComment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[ErrorMsg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ECM10005].[RequiredBy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10005].[UofM]'
GO
GRANT SELECT ON  [dbo].[ECM10005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM10005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM10005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM10005] TO [DYNGRP]
GO

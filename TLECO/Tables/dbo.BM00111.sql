CREATE TABLE [dbo].[BM00111]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_Status] [smallint] NOT NULL,
[Status_Ord] [int] NOT NULL,
[ORD] [int] NOT NULL,
[CMPTITNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Component_Status] [smallint] NOT NULL,
[BM_Comp_State] [smallint] NOT NULL,
[Cost_Type] [smallint] NOT NULL,
[Design_Qty] [numeric] (19, 5) NOT NULL,
[Scrap_Percentage] [smallint] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[Obsolete_Date] [datetime] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM00111] ADD CONSTRAINT [CK__BM00111__Effecti__5629CD9C] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[BM00111] ADD CONSTRAINT [CK__BM00111__Obsolet__571DF1D5] CHECK ((datepart(hour,[Obsolete_Date])=(0) AND datepart(minute,[Obsolete_Date])=(0) AND datepart(second,[Obsolete_Date])=(0) AND datepart(millisecond,[Obsolete_Date])=(0)))
GO
ALTER TABLE [dbo].[BM00111] ADD CONSTRAINT [PKBM00111] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [Bill_Status], [Status_Ord], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM00111] ON [dbo].[BM00111] ([CMPTITNM], [ITEMNMBR], [Bill_Status], [Status_Ord], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM00111] ON [dbo].[BM00111] ([ITEMNMBR], [Bill_Status], [Status_Ord], [Component_Status], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM00111].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[Bill_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[Status_Ord]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM00111].[CMPTITNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[Component_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[BM_Comp_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[Cost_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM00111].[Design_Qty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00111].[Scrap_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00111].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00111].[Obsolete_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM00111].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM00111].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[BM00111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM00111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM00111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM00111] TO [DYNGRP]
GO

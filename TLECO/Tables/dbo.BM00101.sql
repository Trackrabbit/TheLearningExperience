CREATE TABLE [dbo].[BM00101]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_Status] [smallint] NOT NULL,
[Status_Ord] [int] NOT NULL,
[BM_Stock_Method] [smallint] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[Obsolete_Date] [datetime] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM00101] ADD CONSTRAINT [CK__BM00101__CREATDD__5070F446] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[BM00101] ADD CONSTRAINT [CK__BM00101__Effecti__5165187F] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[BM00101] ADD CONSTRAINT [CK__BM00101__MODIFDT__52593CB8] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[BM00101] ADD CONSTRAINT [CK__BM00101__Obsolet__534D60F1] CHECK ((datepart(hour,[Obsolete_Date])=(0) AND datepart(minute,[Obsolete_Date])=(0) AND datepart(second,[Obsolete_Date])=(0) AND datepart(millisecond,[Obsolete_Date])=(0)))
GO
ALTER TABLE [dbo].[BM00101] ADD CONSTRAINT [PKBM00101] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [Bill_Status], [Status_Ord]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM00101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00101].[Bill_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00101].[Status_Ord]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM00101].[BM_Stock_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00101].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00101].[Obsolete_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM00101].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM00101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM00101].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[BM00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM00101] TO [DYNGRP]
GO

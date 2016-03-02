CREATE TABLE [dbo].[SLB10800]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Restrict_Type] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10800] ADD CONSTRAINT [CK__SLB10800__TIME1__1A34DF26] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SLB10800] ADD CONSTRAINT [CK__SLB10800__DATE1__1940BAED] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SLB10800] ADD CONSTRAINT [PKSLB10800] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10800].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10800].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10800].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10800].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10800].[Restrict_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10800].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10800].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10800].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SLB10800].[TOTAL]'
GO
GRANT SELECT ON  [dbo].[SLB10800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10800] TO [DYNGRP]
GO

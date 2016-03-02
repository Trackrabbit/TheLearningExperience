CREATE TABLE [dbo].[SLB10500]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[Task_Number] [smallint] NOT NULL,
[Task_Sequence] [smallint] NOT NULL,
[SmartList_Task_Type] [smallint] NOT NULL,
[SmartList_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Value_From] [smallint] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Parameter_Product] [smallint] NOT NULL,
[Parameter_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number_of_Seconds] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10500] ADD CONSTRAINT [CK__SLB10500__TIME1__21D600EE] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SLB10500] ADD CONSTRAINT [CK__SLB10500__DATE1__20E1DCB5] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SLB10500] ADD CONSTRAINT [PKSLB10500] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number], [Task_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB10500] ON [dbo].[SLB10500] ([SmartList_ID], [GoTo_Number], [Task_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10500].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Task_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Task_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[SmartList_Task_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10500].[SmartList_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Field_Value_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10500].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10500].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10500].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SLB10500].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10500].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Parameter_Product]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10500].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10500].[Number_of_Seconds]'
GO
GRANT SELECT ON  [dbo].[SLB10500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10500] TO [DYNGRP]
GO

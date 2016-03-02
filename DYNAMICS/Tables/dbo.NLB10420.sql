CREATE TABLE [dbo].[NLB10420]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ribbon_Command_Group] [smallint] NOT NULL,
[Command_Number] [smallint] NOT NULL,
[Task_Number] [smallint] NOT NULL,
[Task_Sequence] [smallint] NOT NULL,
[Navigation_Task_Type] [smallint] NOT NULL,
[Navigation_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[NLB10420] ADD CONSTRAINT [CK__NLB10420__TIME1__592635D8] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[NLB10420] ADD CONSTRAINT [CK__NLB10420__DATE1__5832119F] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[NLB10420] ADD CONSTRAINT [PKNLB10420] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Ribbon_Command_Group], [Command_Number], [Task_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NLB10420] ON [dbo].[NLB10420] ([Navigation_ID], [Ribbon_Command_Group], [Command_Number], [Task_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10420].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Ribbon_Command_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Command_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Task_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Task_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Navigation_Task_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10420].[Navigation_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Field_Value_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10420].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB10420].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB10420].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NLB10420].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10420].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Parameter_Product]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10420].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10420].[Number_of_Seconds]'
GO
GRANT SELECT ON  [dbo].[NLB10420] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10420] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10420] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10420] TO [DYNGRP]
GO

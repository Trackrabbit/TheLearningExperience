CREATE TABLE [dbo].[NLB70100]
(
[Action_Type] [smallint] NOT NULL,
[Parameter_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Action_Parameter_Type] [smallint] NOT NULL,
[Required_CB_1] [tinyint] NOT NULL,
[Required_CB_2] [tinyint] NOT NULL,
[Required_CB_3] [tinyint] NOT NULL,
[Required_CB_4] [tinyint] NOT NULL,
[Required_CB_5] [tinyint] NOT NULL,
[Required_CB_6] [tinyint] NOT NULL,
[Required_CB_7] [tinyint] NOT NULL,
[Required_CB_8] [tinyint] NOT NULL,
[Required_CB_9] [tinyint] NOT NULL,
[Required_CB_10] [tinyint] NOT NULL,
[Required_CB_11] [tinyint] NOT NULL,
[Required_CB_12] [tinyint] NOT NULL,
[Required_CB_13] [tinyint] NOT NULL,
[Required_CB_14] [tinyint] NOT NULL,
[Required_CB_15] [tinyint] NOT NULL,
[Required_CB_16] [tinyint] NOT NULL,
[Required_CB_17] [tinyint] NOT NULL,
[Required_CB_18] [tinyint] NOT NULL,
[Required_CB_19] [tinyint] NOT NULL,
[Required_CB_20] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB70100] ADD CONSTRAINT [PKNLB70100] PRIMARY KEY NONCLUSTERED  ([Action_Type], [Parameter_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Action_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB70100].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Action_Parameter_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70100].[Required_CB_20]'
GO
GRANT SELECT ON  [dbo].[NLB70100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB70100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB70100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB70100] TO [DYNGRP]
GO

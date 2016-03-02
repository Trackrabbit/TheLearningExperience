CREATE TABLE [dbo].[NLB11100]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Additional_Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Navigation_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Blank_Field_CB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB11100] ADD CONSTRAINT [PKNLB11100] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Table_Number], [Additional_Table_Number], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11100].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11100].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11100].[Additional_Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11100].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11100].[Navigation_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11100].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11100].[Blank_Field_CB]'
GO
GRANT SELECT ON  [dbo].[NLB11100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB11100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB11100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB11100] TO [DYNGRP]
GO

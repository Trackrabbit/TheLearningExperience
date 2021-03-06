CREATE TABLE [dbo].[NLB11200]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Restriction_Type] [smallint] NOT NULL,
[Value_Type] [smallint] NOT NULL,
[Apply_Restriction_To] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB11200] ADD CONSTRAINT [PKNLB11200] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11200].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[Restriction_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[Value_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11200].[Apply_Restriction_To]'
GO
GRANT SELECT ON  [dbo].[NLB11200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB11200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB11200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB11200] TO [DYNGRP]
GO

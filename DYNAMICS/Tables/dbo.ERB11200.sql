CREATE TABLE [dbo].[ERB11200]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Restriction_Type] [smallint] NOT NULL,
[Value_Type] [smallint] NOT NULL,
[Apply_Restriction_To] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB11200] ADD CONSTRAINT [PKERB11200] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB11200].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[Restriction_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[Value_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11200].[Apply_Restriction_To]'
GO
GRANT SELECT ON  [dbo].[ERB11200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB11200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB11200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB11200] TO [DYNGRP]
GO

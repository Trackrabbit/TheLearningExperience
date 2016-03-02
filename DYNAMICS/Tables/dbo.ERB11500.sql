CREATE TABLE [dbo].[ERB11500]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB11500] ADD CONSTRAINT [PKERB11500] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB11500].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11500].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11500].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11500].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[ERB11500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB11500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB11500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB11500] TO [DYNGRP]
GO

CREATE TABLE [dbo].[ERB10300]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[From_Field] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Field] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB10300] ADD CONSTRAINT [PKERB10300] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Table_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10300].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10300].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10300].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10300].[From_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10300].[To_Field]'
GO
GRANT SELECT ON  [dbo].[ERB10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB10300] TO [DYNGRP]
GO

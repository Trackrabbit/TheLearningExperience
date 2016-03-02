CREATE TABLE [dbo].[ERB11600]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Summary_Field] [tinyint] NOT NULL,
[Summary_Order] [smallint] NOT NULL,
[Summary_Method] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB11600] ADD CONSTRAINT [PKERB11600] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ERB11600] ON [dbo].[ERB11600] ([Excel_Report_ID], [Summary_Field], [Summary_Order], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ERB11600] ON [dbo].[ERB11600] ([Excel_Report_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB11600].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[Summary_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[Summary_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11600].[Summary_Method]'
GO
GRANT SELECT ON  [dbo].[ERB11600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB11600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB11600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB11600] TO [DYNGRP]
GO

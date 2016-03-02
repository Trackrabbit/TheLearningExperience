CREATE TABLE [dbo].[ERB20100]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Drill_Down_Parameter_Num] [smallint] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB20100] ADD CONSTRAINT [PKERB20100] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [LNITMSEQ], [Drill_Down_Parameter_Num]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB20100].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB20100].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB20100].[Drill_Down_Parameter_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB20100].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB20100].[Field_Number]'
GO
GRANT SELECT ON  [dbo].[ERB20100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB20100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB20100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB20100] TO [DYNGRP]
GO

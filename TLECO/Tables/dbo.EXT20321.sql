CREATE TABLE [dbo].[EXT20321]
(
[Extender_Template_ID] [int] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[Template_Date_Option] [smallint] NOT NULL,
[Template_Number_Option] [smallint] NOT NULL,
[Template_Time_Option] [smallint] NOT NULL,
[Replacement_Rule] [smallint] NOT NULL,
[Random_CB] [tinyint] NOT NULL,
[Template_Field_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20321] ADD CONSTRAINT [PKEXT20321] PRIMARY KEY NONCLUSTERED  ([Extender_Template_ID], [Window_Number], [LNITMSEQ], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20321].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20321].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Template_Date_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Template_Number_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Template_Time_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Replacement_Rule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Random_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20321].[Template_Field_Type]'
GO
GRANT SELECT ON  [dbo].[EXT20321] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20321] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20321] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20321] TO [DYNGRP]
GO

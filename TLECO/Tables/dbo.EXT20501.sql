CREATE TABLE [dbo].[EXT20501]
(
[Extender_View_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Link_To_Product_ID] [smallint] NOT NULL,
[Link_To_Table] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_View_From_Type] [smallint] NOT NULL,
[Extender_View_Table_Type] [smallint] NOT NULL,
[Extender_From_Line] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20501] ADD CONSTRAINT [PKEXT20501] PRIMARY KEY NONCLUSTERED  ([Extender_View_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20501] ON [dbo].[EXT20501] ([Extender_View_ID], [Link_To_Table], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20501].[Extender_View_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[Link_To_Product_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20501].[Link_To_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20501].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[Extender_View_From_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[Extender_View_Table_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20501].[Extender_From_Line]'
GO
GRANT SELECT ON  [dbo].[EXT20501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20501] TO [DYNGRP]
GO

CREATE TABLE [dbo].[WHPT001]
(
[WH_PT_Option_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Server_ID] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Database] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Cube] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Type] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[WH_Property] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Portal] [tinyint] NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WHPT001] ADD CONSTRAINT [PKWHPT001] PRIMARY KEY CLUSTERED  ([WH_PT_Option_ID], [WH_Cube], [WH_Type], [SEQNUMBR], [WH_Property]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WHPT001] ON [dbo].[WHPT001] ([WH_Type], [SEQNUMBR], [WH_Cube], [WH_PT_Option_ID], [WH_Property]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[WH_PT_Option_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[WH_Server_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[WH_Database]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[WH_Cube]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPT001].[WH_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPT001].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[WH_Property]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPT001].[WH_Portal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPT001].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[WHPT001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WHPT001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WHPT001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WHPT001] TO [DYNGRP]
GO

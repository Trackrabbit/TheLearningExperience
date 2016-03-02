CREATE TABLE [dbo].[HR2DIS05]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEFILED_I] [datetime] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POINTS_I] [smallint] NOT NULL,
[CHANGES_I] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2DIS05] ADD CONSTRAINT [CK__HR2DIS05__DATEFI__2E871F81] CHECK ((datepart(hour,[DATEFILED_I])=(0) AND datepart(minute,[DATEFILED_I])=(0) AND datepart(second,[DATEFILED_I])=(0) AND datepart(millisecond,[DATEFILED_I])=(0)))
GO
ALTER TABLE [dbo].[HR2DIS05] ADD CONSTRAINT [PKHR2DIS05] PRIMARY KEY CLUSTERED  ([EMPID_I], [DATEFILED_I], [DSCRIPTN], [POINTS_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4HR2DIS05] ON [dbo].[HR2DIS05] ([EMPID_I], [DATEFILED_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIS05].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2DIS05].[DATEFILED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIS05].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS05].[POINTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS05].[CHANGES_I]'
GO
GRANT SELECT ON  [dbo].[HR2DIS05] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2DIS05] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2DIS05] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2DIS05] TO [DYNGRP]
GO
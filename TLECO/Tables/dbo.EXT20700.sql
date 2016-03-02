CREATE TABLE [dbo].[EXT20700]
(
[Extender_Import_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Import_Desc] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Import_File_Type] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_ID] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20700] ADD CONSTRAINT [CK__EXT20700__CREATD__70B705CC] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20700] ADD CONSTRAINT [CK__EXT20700__MODIFD__71AB2A05] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20700] ADD CONSTRAINT [PKEXT20700] PRIMARY KEY NONCLUSTERED  ([Extender_Import_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20700] ON [dbo].[EXT20700] ([Extender_Import_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20700] ON [dbo].[EXT20700] ([Extender_Type], [Extender_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20700].[Extender_Import_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20700].[Extender_Import_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20700].[Import_File_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20700].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20700].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20700].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20700].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20700].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20700].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20700].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT20700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20700] TO [DYNGRP]
GO

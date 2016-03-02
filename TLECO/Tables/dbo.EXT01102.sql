CREATE TABLE [dbo].[EXT01102]
(
[Extender_Record_ID] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01102] ADD CONSTRAINT [CK__EXT01102__DATE1__6288E206] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT01102] ADD CONSTRAINT [PKEXT01102] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01102].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01102].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01102].[DATE1]'
GO
GRANT SELECT ON  [dbo].[EXT01102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01102] TO [DYNGRP]
GO

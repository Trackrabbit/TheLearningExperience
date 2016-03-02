CREATE TABLE [dbo].[EXT01104]
(
[Extender_Record_ID] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01104] ADD CONSTRAINT [CK__EXT01104__TIME1__56E22530] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT01104] ADD CONSTRAINT [PKEXT01104] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01104].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01104].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01104].[TIME1]'
GO
GRANT SELECT ON  [dbo].[EXT01104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01104] TO [DYNGRP]
GO

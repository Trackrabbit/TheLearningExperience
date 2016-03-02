CREATE TABLE [dbo].[EXT01114]
(
[Extender_Record_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01114] ADD CONSTRAINT [CK__EXT01114__TIME1__02F5B198] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT01114] ADD CONSTRAINT [PKEXT01114] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [LNITMSEQ], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01114].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01114].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01114].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01114].[TIME1]'
GO
GRANT SELECT ON  [dbo].[EXT01114] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01114] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01114] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01114] TO [DYNGRP]
GO

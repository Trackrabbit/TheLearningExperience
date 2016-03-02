CREATE TABLE [dbo].[EXT01113]
(
[Extender_Record_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[FUNCTAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01113] ADD CONSTRAINT [PKEXT01113] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [LNITMSEQ], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01113].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01113].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01113].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01113].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01113].[FUNCTAMT]'
GO
GRANT SELECT ON  [dbo].[EXT01113] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01113] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01113] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01113] TO [DYNGRP]
GO

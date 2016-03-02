CREATE TABLE [dbo].[EXT01203]
(
[Extender_Record_ID] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[FUNCTAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01203] ADD CONSTRAINT [PKEXT01203] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01203].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01203].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01203].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01203].[FUNCTAMT]'
GO
GRANT SELECT ON  [dbo].[EXT01203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01203] TO [DYNGRP]
GO

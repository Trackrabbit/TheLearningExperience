CREATE TABLE [dbo].[HREMP602]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[PICTURE_I] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HREMP602] ADD CONSTRAINT [PKHREMP602] PRIMARY KEY NONCLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP602].[EMPID_I]'
GO
GRANT SELECT ON  [dbo].[HREMP602] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HREMP602] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HREMP602] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HREMP602] TO [DYNGRP]
GO

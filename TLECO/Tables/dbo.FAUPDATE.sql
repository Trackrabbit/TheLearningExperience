CREATE TABLE [dbo].[FAUPDATE]
(
[INDEX1] [smallint] NOT NULL,
[Major_Version] [smallint] NOT NULL,
[Minor_Version] [smallint] NOT NULL,
[Build_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FAUPDATE] ADD CONSTRAINT [PKFAUPDATE] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAUPDATE].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAUPDATE].[Major_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAUPDATE].[Minor_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAUPDATE].[Build_Number]'
GO
GRANT SELECT ON  [dbo].[FAUPDATE] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FAUPDATE] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FAUPDATE] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FAUPDATE] TO [DYNGRP]
GO

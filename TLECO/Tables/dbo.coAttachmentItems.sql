CREATE TABLE [dbo].[coAttachmentItems]
(
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[coAttachmentItems] ADD CONSTRAINT [PK_coAttachmentItems] PRIMARY KEY NONCLUSTERED  ([Attachment_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[coAttachmentItems].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[coAttachmentItems].[fileName]'
GO
GRANT SELECT ON  [dbo].[coAttachmentItems] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[coAttachmentItems] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[coAttachmentItems] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[coAttachmentItems] TO [DYNGRP]
GO

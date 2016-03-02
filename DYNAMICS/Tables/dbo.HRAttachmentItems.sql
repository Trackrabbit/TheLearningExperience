CREATE TABLE [dbo].[HRAttachmentItems]
(
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRAttachmentItems] ADD CONSTRAINT [PK_HRAttachmentItems] PRIMARY KEY NONCLUSTERED  ([Attachment_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRAttachmentItems].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRAttachmentItems].[fileName]'
GO
GRANT SELECT ON  [dbo].[HRAttachmentItems] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRAttachmentItems] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRAttachmentItems] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRAttachmentItems] TO [DYNGRP]
GO

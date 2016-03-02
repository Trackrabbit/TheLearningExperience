CREATE TABLE [dbo].[syCompanyImages]
(
[RELID] [int] NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[syCompanyImages] ADD CONSTRAINT [PK_syCompanyImages] PRIMARY KEY NONCLUSTERED  ([RELID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[syCompanyImages] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[syCompanyImages] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[syCompanyImages] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[syCompanyImages] TO [DYNGRP]
GO

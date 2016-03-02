CREATE TABLE [dbo].[syReportTemplates]
(
[RELID] [int] NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[syReportTemplates] ADD CONSTRAINT [PK_syReportTemplates] PRIMARY KEY NONCLUSTERED  ([RELID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[syReportTemplates] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[syReportTemplates] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[syReportTemplates] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[syReportTemplates] TO [DYNGRP]
GO

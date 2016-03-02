CREATE TABLE [dbo].[WSErrorProperties]
(
[ErrorCode] [int] NOT NULL,
[Properties] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSErrorProperties] ADD CONSTRAINT [PK_WSErrorProperties] PRIMARY KEY CLUSTERED  ([ErrorCode]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSErrorProperties] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSErrorProperties] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSErrorProperties] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSErrorProperties] TO [DYNGRP]
GO

CREATE TABLE [dbo].[syClrAssemblies]
(
[Platform] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AssemblyName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Thumbprint] [varbinary] (32) NOT NULL,
[PublicKey] [varbinary] (max) NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[syClrAssemblies] ADD CONSTRAINT [PK_syClrAssemblies] PRIMARY KEY NONCLUSTERED  ([Platform], [AssemblyName]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[syClrAssemblies] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[syClrAssemblies] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[syClrAssemblies] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[syClrAssemblies] TO [DYNGRP]
GO

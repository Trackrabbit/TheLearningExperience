CREATE TABLE [dbo].[_NodusFailedRotations]
(
[Edata] [nvarchar] (450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Timestamp] [datetime] NOT NULL CONSTRAINT [DF__NodusFailedRotations_Timestamp] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_NodusFailedRotations] ADD CONSTRAINT [PK__NodusFailedRotations] PRIMARY KEY CLUSTERED  ([Edata]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[_NodusFailedRotations] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[_NodusFailedRotations] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[_NodusFailedRotations] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[_NodusFailedRotations] TO [DYNGRP]
GO

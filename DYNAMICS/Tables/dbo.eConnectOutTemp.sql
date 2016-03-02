CREATE TABLE [dbo].[eConnectOutTemp]
(
[DOCTYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX1] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX2] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX3] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX4] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX5] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX6] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX7] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX8] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX9] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX10] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX11] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX12] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX13] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX14] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX15] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[eConnectOutTemp] ADD CONSTRAINT [PK_eConnect_Out_temp] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [INDEX1], [INDEX2], [INDEX3], [INDEX4], [INDEX5], [INDEX6], [INDEX7], [INDEX8], [INDEX9], [INDEX10], [INDEX11], [INDEX12], [INDEX13], [INDEX14], [INDEX15]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[eConnectOutTemp] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[eConnectOutTemp] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[eConnectOutTemp] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[eConnectOutTemp] TO [DYNGRP]
GO

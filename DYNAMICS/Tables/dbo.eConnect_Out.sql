CREATE TABLE [dbo].[eConnect_Out]
(
[DOCTYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TABLENAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL,
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
[INDEX15] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTION] [int] NOT NULL,
[REPLICATE] [int] NOT NULL,
[DBNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[eConnect_Out] ADD CONSTRAINT [PK_eConnect_Out] PRIMARY KEY NONCLUSTERED  ([INDEX1], [INDEX2], [INDEX3], [INDEX4], [INDEX5], [INDEX6], [INDEX7], [INDEX8], [INDEX9], [INDEX10], [INDEX11], [INDEX12], [INDEX13], [DOCTYPE], [ACTION], [DATE1]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AK1_eConnect_Out] ON [dbo].[eConnect_Out] ([DOCTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[TA_DATE]', N'[dbo].[eConnect_Out].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[TABLENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out].[DEX_ROW_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out].[INDEX15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out].[ACTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out].[REPLICATE]'
GO
EXEC sp_bindefault N'[dbo].[TA_DBNAME]', N'[dbo].[eConnect_Out].[DBNAME]'
GO
GRANT REFERENCES ON  [dbo].[eConnect_Out] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[eConnect_Out] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[eConnect_Out] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[eConnect_Out] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[eConnect_Out] TO [DYNGRP]
GO

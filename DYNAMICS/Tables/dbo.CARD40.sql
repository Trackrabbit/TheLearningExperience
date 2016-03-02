CREATE TABLE [dbo].[CARD40]
(
[INTERNALCODIVCB_I] [tinyint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXT_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IFAX_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXT2_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMAILADDRESS_I] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CARD40] ADD CONSTRAINT [PKCARD40] PRIMARY KEY CLUSTERED  ([DSCRIPTN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CARD40].[INTERNALCODIVCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[ZIPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[WORKPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[EXT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[IFAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[EXT2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[FFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CARD40].[EMAILADDRESS_I]'
GO
GRANT SELECT ON  [dbo].[CARD40] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CARD40] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CARD40] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CARD40] TO [DYNGRP]
GO

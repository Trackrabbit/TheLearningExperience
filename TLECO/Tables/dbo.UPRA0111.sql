CREATE TABLE [dbo].[UPRA0111]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[RELATIONSHIP] [smallint] NOT NULL,
[COMMENTSTR20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDDLEINITIAL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPENDENTSSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GENDER] [smallint] NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[HOMEPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXTENSION] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FLTMSTDNTCB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPRA0111] ADD CONSTRAINT [CK__UPRA0111__BRTHDA__6167A509] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPRA0111] ADD CONSTRAINT [PKUPRA0111] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0111].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0111].[RELATIONSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[COMMENTSTR20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[MIDDLEINITIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[DEPENDENTSSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0111].[GENDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0111].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[HOMEPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[WORKPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[EXTENSION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0111].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0111].[FLTMSTDNTCB]'
GO
GRANT SELECT ON  [dbo].[UPRA0111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPRA0111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPRA0111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPRA0111] TO [DYNGRP]
GO

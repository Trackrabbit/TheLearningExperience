CREATE TABLE [dbo].[HRTCTMP]
(
[COURSEID_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICLASSID_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLASSSTARTDATE_I] [datetime] NOT NULL,
[CLASSENDDATE_I] [datetime] NOT NULL,
[NUMBERENROLLED_I] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRTCTMP] ADD CONSTRAINT [CK__HRTCTMP__CLASSEN__77C0FA7C] CHECK ((datepart(hour,[CLASSENDDATE_I])=(0) AND datepart(minute,[CLASSENDDATE_I])=(0) AND datepart(second,[CLASSENDDATE_I])=(0) AND datepart(millisecond,[CLASSENDDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRTCTMP] ADD CONSTRAINT [CK__HRTCTMP__CLASSST__78B51EB5] CHECK ((datepart(hour,[CLASSSTARTDATE_I])=(0) AND datepart(minute,[CLASSSTARTDATE_I])=(0) AND datepart(second,[CLASSSTARTDATE_I])=(0) AND datepart(millisecond,[CLASSSTARTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRTCTMP] ADD CONSTRAINT [PKHRTCTMP] PRIMARY KEY CLUSTERED  ([COURSEID_I], [ICLASSID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTCTMP].[COURSEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTCTMP].[ICLASSID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRTCTMP].[CLASSSTARTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRTCTMP].[CLASSENDDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTCTMP].[NUMBERENROLLED_I]'
GO
GRANT SELECT ON  [dbo].[HRTCTMP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRTCTMP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRTCTMP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRTCTMP] TO [DYNGRP]
GO

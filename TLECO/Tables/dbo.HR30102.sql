CREATE TABLE [dbo].[HR30102]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TESTSCORE_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR30102] ADD CONSTRAINT [CK__HR30102__DATE1__7701E06D] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[HR30102] ADD CONSTRAINT [CK__HR30102__EXPNDAT__77F604A6] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[HR30102] ADD CONSTRAINT [PKHR30102] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [TESTCODE_I], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR30102].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR30102].[TESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR30102].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR30102].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR30102].[TESTSCORE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR30102].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[HR30102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR30102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR30102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR30102] TO [DYNGRP]
GO

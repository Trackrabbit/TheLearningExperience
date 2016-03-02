CREATE TABLE [dbo].[PC40100]
(
[SETUPKEY] [smallint] NOT NULL,
[BUDEMPLREXP] [smallint] NOT NULL,
[BUDGETFTE] [smallint] NOT NULL,
[BUDPERMSEATS] [smallint] NOT NULL,
[BUDTEMPSEATS] [smallint] NOT NULL,
[INCUNASSIGNED] [smallint] NOT NULL,
[PWDARRAY_1] [binary] (16) NOT NULL,
[PWDARRAY_2] [binary] (16) NOT NULL,
[PWDARRAY_3] [binary] (16) NOT NULL,
[PWDARRAY_4] [binary] (16) NOT NULL,
[PWDARRAY_5] [binary] (16) NOT NULL,
[SAVRECRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40100] ADD CONSTRAINT [PKPC40100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[BUDEMPLREXP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[BUDGETFTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[BUDPERMSEATS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[BUDTEMPSEATS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[INCUNASSIGNED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[PWDARRAY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[PWDARRAY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[PWDARRAY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[PWDARRAY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[PWDARRAY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40100].[SAVRECRD]'
GO
GRANT SELECT ON  [dbo].[PC40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40100] TO [DYNGRP]
GO

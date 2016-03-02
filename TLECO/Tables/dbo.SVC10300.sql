CREATE TABLE [dbo].[SVC10300]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[DSCRPTN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[In_Use] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC10300] ADD CONSTRAINT [CK__SVC10300__DATE1__3E730AF3] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC10300] ADD CONSTRAINT [PKSVC10300] PRIMARY KEY NONCLUSTERED  ([BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10300].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10300].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC10300].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10300].[DSCRPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10300].[In_Use]'
GO
GRANT SELECT ON  [dbo].[SVC10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC10300] TO [DYNGRP]
GO

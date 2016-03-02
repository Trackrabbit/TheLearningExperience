CREATE TABLE [dbo].[BE031000]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Hours_FMLA] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BE031000] ADD CONSTRAINT [CK__BE031000__DATE1__1F79E61B] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[BE031000] ADD CONSTRAINT [PKBE031000] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE031000].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE031000].[Hours_FMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE031000].[DATE1]'
GO
GRANT SELECT ON  [dbo].[BE031000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BE031000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BE031000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BE031000] TO [DYNGRP]
GO

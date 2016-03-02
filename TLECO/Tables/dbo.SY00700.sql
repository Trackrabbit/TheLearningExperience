CREATE TABLE [dbo].[SY00700]
(
[NOTENAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DSPLNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY00700] ADD CONSTRAINT [CK__SY00700__TIME1__257C74A0] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY00700] ADD CONSTRAINT [CK__SY00700__DATE1__24885067] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SY00700] ADD CONSTRAINT [PKSY00700] PRIMARY KEY NONCLUSTERED  ([NOTENAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00700].[NOTENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00700].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00700].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00700].[DSPLNAME]'
GO
GRANT SELECT ON  [dbo].[SY00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00700] TO [DYNGRP]
GO

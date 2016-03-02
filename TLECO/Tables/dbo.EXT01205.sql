CREATE TABLE [dbo].[EXT01205]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01205] ADD CONSTRAINT [CK__EXT01205__TIME1__22195736] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT01205] ADD CONSTRAINT [CK__EXT01205__DATE1__212532FD] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT01205] ADD CONSTRAINT [PKEXT01205] PRIMARY KEY NONCLUSTERED  ([CMRECNUM], [Window_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01205].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01205].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01205].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01205].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01205].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01205].[USERID]'
GO
GRANT SELECT ON  [dbo].[EXT01205] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01205] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01205] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01205] TO [DYNGRP]
GO

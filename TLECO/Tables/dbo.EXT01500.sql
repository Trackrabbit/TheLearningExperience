CREATE TABLE [dbo].[EXT01500]
(
[Extender_Type] [smallint] NOT NULL,
[Extender_Record_ID] [int] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01500] ADD CONSTRAINT [CK__EXT01500__TIME1__5D0512DA] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT01500] ADD CONSTRAINT [CK__EXT01500__DATE1__5C10EEA1] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT01500] ADD CONSTRAINT [PKEXT01500] PRIMARY KEY NONCLUSTERED  ([Extender_Type], [Extender_Record_ID], [Window_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01500].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01500].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01500].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01500].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01500].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01500].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01500].[Note_Type]'
GO
GRANT SELECT ON  [dbo].[EXT01500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01500] TO [DYNGRP]
GO

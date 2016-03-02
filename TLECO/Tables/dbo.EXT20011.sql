CREATE TABLE [dbo].[EXT20011]
(
[Field_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Restriction_Field_ID] [int] NOT NULL,
[Restriction_Value_Type] [smallint] NOT NULL,
[Posting_Restriction] [smallint] NOT NULL,
[Restrict_From_Field_ID] [int] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Condition_Date_Option] [smallint] NOT NULL,
[Template_Time_Option1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20011] ADD CONSTRAINT [CK__EXT20011__TIME1__51FD7482] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT20011] ADD CONSTRAINT [CK__EXT20011__DATE1__51095049] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT20011] ADD CONSTRAINT [PKEXT20011] PRIMARY KEY NONCLUSTERED  ([Field_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Restriction_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Restriction_Value_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Posting_Restriction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Restrict_From_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20011].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20011].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20011].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20011].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Condition_Date_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20011].[Template_Time_Option1]'
GO
GRANT SELECT ON  [dbo].[EXT20011] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20011] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20011] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20011] TO [DYNGRP]
GO

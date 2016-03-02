CREATE TABLE [dbo].[EXT20236]
(
[Extender_Navigation_List] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[Posting_Restriction] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[Condition_Date_Option] [smallint] NOT NULL,
[Template_Time_Option1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20236] ADD CONSTRAINT [CK__EXT20236__TIME1__537BA8A0] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT20236] ADD CONSTRAINT [CK__EXT20236__DATE1__52878467] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT20236] ADD CONSTRAINT [PKEXT20236] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[Posting_Restriction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20236].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20236].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20236].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20236].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[Condition_Date_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20236].[Template_Time_Option1]'
GO
GRANT SELECT ON  [dbo].[EXT20236] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20236] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20236] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20236] TO [DYNGRP]
GO

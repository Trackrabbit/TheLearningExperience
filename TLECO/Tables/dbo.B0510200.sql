CREATE TABLE [dbo].[B0510200]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Address_Type] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Email1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Email_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Season_Start_Date] [datetime] NOT NULL,
[MJW_Season_End_Date] [datetime] NOT NULL,
[MJW_Temp_Field] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510200] ADD CONSTRAINT [CK__B0510200__MJW_Se__6F7C8FB9] CHECK ((datepart(hour,[MJW_Season_End_Date])=(0) AND datepart(minute,[MJW_Season_End_Date])=(0) AND datepart(second,[MJW_Season_End_Date])=(0) AND datepart(millisecond,[MJW_Season_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510200] ADD CONSTRAINT [CK__B0510200__MJW_Se__6E886B80] CHECK ((datepart(hour,[MJW_Season_Start_Date])=(0) AND datepart(minute,[MJW_Season_Start_Date])=(0) AND datepart(second,[MJW_Season_Start_Date])=(0) AND datepart(millisecond,[MJW_Season_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510200] ADD CONSTRAINT [PKB0510200] PRIMARY KEY CLUSTERED  ([VENDORID], [ADRSCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510200] ON [dbo].[B0510200] ([VENDORID], [MJW_Address_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510200].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510200].[MJW_Address_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510200].[MJW_Email1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510200].[MJW_Email_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510200].[MJW_Season_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510200].[MJW_Season_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510200].[MJW_Temp_Field]'
GO
GRANT SELECT ON  [dbo].[B0510200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510200] TO [DYNGRP]
GO

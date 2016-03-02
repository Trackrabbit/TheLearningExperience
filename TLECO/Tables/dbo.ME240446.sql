CREATE TABLE [dbo].[ME240446]
(
[ME_Cache_Type] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ME_GUID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Cache_Currency] [numeric] (19, 5) NOT NULL,
[ME_Cache_Date] [datetime] NOT NULL,
[ME_Cache_String] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Cache_Variable_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240446] ADD CONSTRAINT [CK__ME240446__ME_Cac__56A22E0E] CHECK ((datepart(hour,[ME_Cache_Date])=(0) AND datepart(minute,[ME_Cache_Date])=(0) AND datepart(second,[ME_Cache_Date])=(0) AND datepart(millisecond,[ME_Cache_Date])=(0)))
GO
ALTER TABLE [dbo].[ME240446] ADD CONSTRAINT [PKME240446] PRIMARY KEY CLUSTERED  ([ME_GUID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240446].[ME_Cache_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240446].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240446].[ME_GUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240446].[ME_Cache_Currency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240446].[ME_Cache_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240446].[ME_Cache_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240446].[ME_Cache_Variable_Name]'
GO
GRANT SELECT ON  [dbo].[ME240446] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240446] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240446] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240446] TO [DYNGRP]
GO

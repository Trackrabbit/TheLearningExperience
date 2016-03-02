CREATE TABLE [dbo].[ME123515]
(
[Output_Format] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Line_Position] [smallint] NOT NULL,
[BANKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Line_Type] [smallint] NOT NULL,
[ME_File_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Output_Type] [smallint] NOT NULL,
[ME_Number_of_Fields] [smallint] NOT NULL,
[ME_File_Length] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123515] ADD CONSTRAINT [PKME123515] PRIMARY KEY CLUSTERED  ([Output_Format], [ME_Line_Position]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME123515] ON [dbo].[ME123515] ([BANKID], [ME_Line_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123515].[Output_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123515].[ME_Line_Position]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123515].[BANKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123515].[ME_Line_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123515].[ME_File_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123515].[ME_Output_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123515].[ME_Number_of_Fields]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123515].[ME_File_Length]'
GO
GRANT SELECT ON  [dbo].[ME123515] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123515] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123515] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123515] TO [DYNGRP]
GO

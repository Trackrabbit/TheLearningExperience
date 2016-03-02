CREATE TABLE [dbo].[B4640709]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Insurance_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Required_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Certificate_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Policy_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Insurer] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Policy_Cost] [numeric] (19, 5) NOT NULL,
[BSSI_Commencement_Date] [datetime] NOT NULL,
[BSSI_Termination_Date] [datetime] NOT NULL,
[BSSI_Policy_Amount] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640709] ADD CONSTRAINT [CK__B4640709__BSSI_C__354697DA] CHECK ((datepart(hour,[BSSI_Commencement_Date])=(0) AND datepart(minute,[BSSI_Commencement_Date])=(0) AND datepart(second,[BSSI_Commencement_Date])=(0) AND datepart(millisecond,[BSSI_Commencement_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640709] ADD CONSTRAINT [CK__B4640709__BSSI_T__363ABC13] CHECK ((datepart(hour,[BSSI_Termination_Date])=(0) AND datepart(minute,[BSSI_Termination_Date])=(0) AND datepart(second,[BSSI_Termination_Date])=(0) AND datepart(millisecond,[BSSI_Termination_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640709] ADD CONSTRAINT [PKB4640709] PRIMARY KEY NONCLUSTERED  ([LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640709] ON [dbo].[B4640709] ([LOCNCODE], [BSSI_Insurance_Type_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640709].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640709].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640709].[BSSI_Insurance_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640709].[BSSI_Required_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640709].[BSSI_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640709].[BSSI_Policy_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640709].[BSSI_Insurer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640709].[BSSI_Policy_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640709].[BSSI_Commencement_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640709].[BSSI_Termination_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640709].[BSSI_Policy_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640709].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4640709] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640709] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640709] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640709] TO [DYNGRP]
GO

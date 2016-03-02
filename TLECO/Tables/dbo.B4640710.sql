CREATE TABLE [dbo].[B4640710]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Study_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Height] [numeric] (19, 5) NOT NULL,
[BSSI_Height_AGL] [numeric] (19, 5) NOT NULL,
[BSSI_Advisory_Circular] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AMSL] [numeric] (19, 5) NOT NULL,
[BSSI_AMSL_Overal] [numeric] (19, 5) NOT NULL,
[BSSI_Issue_Date] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy_Field] [tinyint] NOT NULL,
[BSSI_Determ_Expire_Date] [datetime] NOT NULL,
[BSSI_FAA_ML] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640710] ADD CONSTRAINT [CK__B4640710__BSSI_D__1D6F0E49] CHECK ((datepart(hour,[BSSI_Determ_Expire_Date])=(0) AND datepart(minute,[BSSI_Determ_Expire_Date])=(0) AND datepart(second,[BSSI_Determ_Expire_Date])=(0) AND datepart(millisecond,[BSSI_Determ_Expire_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640710] ADD CONSTRAINT [PKB4640710] PRIMARY KEY NONCLUSTERED  ([LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640710] ON [dbo].[B4640710] ([LOCNCODE], [BSSI_Study_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640710].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640710].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640710].[BSSI_Study_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640710].[BSSI_Height]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640710].[BSSI_Height_AGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640710].[BSSI_Advisory_Circular]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640710].[BSSI_AMSL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640710].[BSSI_AMSL_Overal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640710].[BSSI_Issue_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640710].[BSSI_Dummy_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640710].[BSSI_Determ_Expire_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640710].[BSSI_FAA_ML]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640710].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4640710] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640710] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640710] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640710] TO [DYNGRP]
GO

CREATE TABLE [dbo].[DO50100]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address_Verification_Opt] [smallint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NextElectronicNumber] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO50100] ADD CONSTRAINT [PKDO50100] PRIMARY KEY NONCLUSTERED  ([NextElectronicNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2DO50100] ON [dbo].[DO50100] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO50100].[Address_Verification_Opt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO50100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO50100].[NextElectronicNumber]'
GO
GRANT SELECT ON  [dbo].[DO50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DO50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DO50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DO50100] TO [DYNGRP]
GO

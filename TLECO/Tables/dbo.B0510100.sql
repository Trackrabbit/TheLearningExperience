CREATE TABLE [dbo].[B0510100]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Vendor_Type] [smallint] NOT NULL,
[MJW_Owner_Type_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Legal_Residence_Stat] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Distribution_Check_R] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_Type] [smallint] NOT NULL,
[MJW_Tax_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Tax_Type] [smallint] NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Salutation] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_K1_Name] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_K1_Name1] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Certificate_Name] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_Accredited] [tinyint] NOT NULL,
[BSSI_Reinvest_CB] [tinyint] NOT NULL,
[BSSI_Investor_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[MJW_Registration] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510100] ADD CONSTRAINT [CK__B0510100__BRTHDA__5D5DDF7E] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[B0510100] ADD CONSTRAINT [PKB0510100] PRIMARY KEY NONCLUSTERED  ([VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510100] ON [dbo].[B0510100] ([MJW_Tax_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510100] ON [dbo].[B0510100] ([MJW_Tax_ID], [VENDNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[MJW_Vendor_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_Legal_Residence_Stat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_Distribution_Check_R]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[MJW_Investor_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_Tax_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[MJW_Tax_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_Salutation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_K1_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[MJW_K1_Name1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510100].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510100].[IMS_Certificate_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[MJW_Investor_Accredited]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[BSSI_Reinvest_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510100].[BSSI_Investor_Type]'
GO
GRANT SELECT ON  [dbo].[B0510100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510100] TO [DYNGRP]
GO

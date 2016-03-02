CREATE TABLE [dbo].[ME142706]
(
[CMPANYID] [smallint] NOT NULL,
[ME_Verification_Source] [smallint] NOT NULL,
[ME_Merchant_Name] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEREQFPTH] [char] (111) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEANSFPTH] [char] (111) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEICVEVAL] [smallint] NOT NULL,
[ME_Default_Address_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEADDCONF] [tinyint] NOT NULL,
[ME_Validate_ZipCode] [tinyint] NOT NULL,
[ME_Ecommerce_Type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEDNDB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEHISTKP] [tinyint] NOT NULL,
[MEPRICARC] [tinyint] NOT NULL,
[MEMCID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Virtual_Workstation_P] [char] (111) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Registered_Workstatio] [smallint] NOT NULL,
[ME_Reserved_Workstations] [smallint] NOT NULL,
[ME_Virtual_WS_Wait_Time] [smallint] NOT NULL,
[MERECPROCDT] [datetime] NOT NULL,
[MERECPROTM] [datetime] NOT NULL,
[ME_Processor] [smallint] NOT NULL,
[ME_Book_Valid_For_Days] [smallint] NOT NULL,
[ME_Auto_Add_Freight] [smallint] NOT NULL,
[ME_Add_Freight_To_Docume] [tinyint] NOT NULL,
[ME_Freight_Amount] [numeric] (19, 5) NOT NULL,
[ME_Freight_Percent] [numeric] (19, 5) NOT NULL,
[ME_Auto_Add_Misc] [smallint] NOT NULL,
[ME_Add_Misc_To_Document] [tinyint] NOT NULL,
[ME_Misc_Amount] [numeric] (19, 5) NOT NULL,
[ME_Misc_Percent] [numeric] (19, 5) NOT NULL,
[USERDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ME_Book_Equal_Ship] [tinyint] NOT NULL,
[ME_ReqAns_Log] [tinyint] NOT NULL,
[ME_TimeOut] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME142706] ADD CONSTRAINT [CK__ME142706__MERECP__592A6055] CHECK ((datepart(day,[MERECPROTM])=(1) AND datepart(month,[MERECPROTM])=(1) AND datepart(year,[MERECPROTM])=(1900)))
GO
ALTER TABLE [dbo].[ME142706] ADD CONSTRAINT [CK__ME142706__MERECP__58363C1C] CHECK ((datepart(hour,[MERECPROCDT])=(0) AND datepart(minute,[MERECPROCDT])=(0) AND datepart(second,[MERECPROCDT])=(0) AND datepart(millisecond,[MERECPROCDT])=(0)))
GO
ALTER TABLE [dbo].[ME142706] ADD CONSTRAINT [CK__ME142706__USERDA__5A1E848E] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[ME142706] ADD CONSTRAINT [PKME142706] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Verification_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[ME_Merchant_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[MEREQFPTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[MEANSFPTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[MEICVEVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[ME_Default_Address_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[MEADDCONF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Validate_ZipCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[ME_Ecommerce_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[MEDNDB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[MEHISTKP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[MEPRICARC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[MEMCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[ME_Virtual_Workstation_P]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Registered_Workstatio]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Reserved_Workstations]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Virtual_WS_Wait_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142706].[MERECPROCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142706].[MERECPROTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Processor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Book_Valid_For_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Auto_Add_Freight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Add_Freight_To_Docume]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142706].[ME_Freight_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142706].[ME_Freight_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Auto_Add_Misc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Add_Misc_To_Document]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142706].[ME_Misc_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142706].[ME_Misc_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142706].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142706].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142706].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_Book_Equal_Ship]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_ReqAns_Log]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142706].[ME_TimeOut]'
GO
GRANT SELECT ON  [dbo].[ME142706] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME142706] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME142706] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME142706] TO [DYNGRP]
GO

CREATE TABLE [dbo].[CM00200]
(
[MerchantID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTHash] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTHashCode] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ISOCURRC] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTDownLoadFilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTProcessedFilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00200] ADD CONSTRAINT [CK__CM00200__TIME1__1332DBDC] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM00200] ADD CONSTRAINT [CK__CM00200__CREATDD__10566F31] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CM00200] ADD CONSTRAINT [CK__CM00200__DATE1__114A936A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[CM00200] ADD CONSTRAINT [CK__CM00200__MODIFDT__123EB7A3] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM00200] ADD CONSTRAINT [PKCM00200] PRIMARY KEY NONCLUSTERED  ([MerchantID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[MerchantID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[EFTHash]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[EFTHashCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[ISOCURRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[FilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[EFTDownLoadFilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[EFTProcessedFilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00200].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[CM00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00200] TO [DYNGRP]
GO

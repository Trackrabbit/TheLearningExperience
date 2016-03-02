CREATE TABLE [dbo].[DD10400]
(
[INDXLONG] [int] NOT NULL,
[DDAUTOST] [tinyint] NOT NULL,
[INCLPYMT] [tinyint] NOT NULL,
[PRINTED] [tinyint] NOT NULL,
[BLDCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BLDCHKDT] [datetime] NOT NULL,
[BLDCHTIM] [datetime] NOT NULL,
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYDATE] [datetime] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD10400] ADD CONSTRAINT [CK__DD10400__BLDCHTI__1209AD79] CHECK ((datepart(day,[BLDCHTIM])=(1) AND datepart(month,[BLDCHTIM])=(1) AND datepart(year,[BLDCHTIM])=(1900)))
GO
ALTER TABLE [dbo].[DD10400] ADD CONSTRAINT [CK__DD10400__BLDCHKD__11158940] CHECK ((datepart(hour,[BLDCHKDT])=(0) AND datepart(minute,[BLDCHKDT])=(0) AND datepart(second,[BLDCHKDT])=(0) AND datepart(millisecond,[BLDCHKDT])=(0)))
GO
ALTER TABLE [dbo].[DD10400] ADD CONSTRAINT [CK__DD10400__Effecti__12FDD1B2] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[DD10400] ADD CONSTRAINT [CK__DD10400__PAYDATE__13F1F5EB] CHECK ((datepart(hour,[PAYDATE])=(0) AND datepart(minute,[PAYDATE])=(0) AND datepart(second,[PAYDATE])=(0) AND datepart(millisecond,[PAYDATE])=(0)))
GO
ALTER TABLE [dbo].[DD10400] ADD CONSTRAINT [PKDD10400] PRIMARY KEY NONCLUSTERED  ([INDXLONG]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2DD10400] ON [dbo].[DD10400] ([USERID], [INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10400].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10400].[DDAUTOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10400].[INCLPYMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10400].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10400].[BLDCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10400].[BLDCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10400].[BLDCHTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10400].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10400].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10400].[PAYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10400].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10400].[CHEKBKID]'
GO
GRANT SELECT ON  [dbo].[DD10400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD10400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD10400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD10400] TO [DYNGRP]
GO

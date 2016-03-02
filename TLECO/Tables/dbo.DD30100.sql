CREATE TABLE [dbo].[DD30100]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD30100] ADD CONSTRAINT [CK__DD30100__BLDCHTI__1D7B6025] CHECK ((datepart(day,[BLDCHTIM])=(1) AND datepart(month,[BLDCHTIM])=(1) AND datepart(year,[BLDCHTIM])=(1900)))
GO
ALTER TABLE [dbo].[DD30100] ADD CONSTRAINT [CK__DD30100__BLDCHKD__1C873BEC] CHECK ((datepart(hour,[BLDCHKDT])=(0) AND datepart(minute,[BLDCHKDT])=(0) AND datepart(second,[BLDCHKDT])=(0) AND datepart(millisecond,[BLDCHKDT])=(0)))
GO
ALTER TABLE [dbo].[DD30100] ADD CONSTRAINT [CK__DD30100__Effecti__1E6F845E] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[DD30100] ADD CONSTRAINT [CK__DD30100__PAYDATE__1F63A897] CHECK ((datepart(hour,[PAYDATE])=(0) AND datepart(minute,[PAYDATE])=(0) AND datepart(second,[PAYDATE])=(0) AND datepart(millisecond,[PAYDATE])=(0)))
GO
ALTER TABLE [dbo].[DD30100] ADD CONSTRAINT [PKDD30100] PRIMARY KEY NONCLUSTERED  ([INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD30100].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD30100].[DDAUTOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD30100].[INCLPYMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD30100].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD30100].[BLDCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD30100].[BLDCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD30100].[BLDCHTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD30100].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD30100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD30100].[PAYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD30100].[Effective_Date]'
GO
GRANT SELECT ON  [dbo].[DD30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD30100] TO [DYNGRP]
GO

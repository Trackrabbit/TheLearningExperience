CREATE TABLE [dbo].[W200002]
(
[RPTNGYR] [smallint] NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLTYPE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WAGEFILE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EPRIDNBR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCLUDCO] [tinyint] NOT NULL,
[EMPLRADD] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLRCTY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[EMPW2TOT] [int] NOT NULL,
[EMPWTOC] [numeric] (19, 5) NOT NULL,
[EMPFEDTX] [numeric] (19, 5) NOT NULL,
[EMPSSWGS] [numeric] (19, 5) NOT NULL,
[EMPSSTAX] [numeric] (19, 5) NOT NULL,
[EMPMEDWG] [numeric] (19, 5) NOT NULL,
[EMPMEDTX] [numeric] (19, 5) NOT NULL,
[EMPSSTIP] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[W200002] ADD CONSTRAINT [CK__W200002__TIME1__6D9742D9] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[W200002] ADD CONSTRAINT [CK__W200002__DATE1__6CA31EA0] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[W200002] ADD CONSTRAINT [PKW200002] PRIMARY KEY NONCLUSTERED  ([RPTNGYR], [CMPNYNAM], [EMPLTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200002].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[EMPLTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[WAGEFILE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[W200002].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[W200002].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[EPRIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200002].[INCLUDCO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[EMPLRADD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[EMPLRCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200002].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200002].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200002].[EMPW2TOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPWTOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPFEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPSSWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPSSTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPMEDWG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPMEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200002].[EMPSSTIP]'
GO
GRANT SELECT ON  [dbo].[W200002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[W200002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[W200002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[W200002] TO [DYNGRP]
GO

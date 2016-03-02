CREATE TABLE [dbo].[iv40700bu]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location_Segment] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STAXSCHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PCTAXSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCLDDINPLNNNG] [tinyint] NOT NULL,
[PORECEIPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORETRNBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOFULFILLMENTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORETURNBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BOMRCPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MATERIALISSUEBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MORECEIPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPAIRISSUESBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WMSINT] [tinyint] NOT NULL,
[PICKTICKETSITEOPT] [smallint] NOT NULL,
[BINBREAK] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[iv40700bu].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[STAXSCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PCTAXSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[iv40700bu].[INCLDDINPLNNNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[PORETRNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[SOFULFILLMENTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[SORETURNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[BOMRCPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[MATERIALISSUEBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[MORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[REPAIRISSUESBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[iv40700bu].[WMSINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[iv40700bu].[PICKTICKETSITEOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[iv40700bu].[BINBREAK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[iv40700bu].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[iv40700bu].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[iv40700bu] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[iv40700bu] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[iv40700bu] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[iv40700bu] TO [DYNGRP]
GO

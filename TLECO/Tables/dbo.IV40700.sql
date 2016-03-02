CREATE TABLE [dbo].[IV40700]
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
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_IV40700Del] on [dbo].[IV40700] for delete as  declare @mstrID int,  @status smallint  select @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from deleted   exec aagDelMstrRecord @mstrID, 5, 0, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_IV40700Ins] on [dbo].[IV40700] for insert as  declare @mstrID int,  @status smallint  select  @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from inserted   exec aagInsMstrRecord @mstrID, 5, 0, @status out    
GO
ALTER TABLE [dbo].[IV40700] ADD CONSTRAINT [PKIV40700] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV40700] ON [dbo].[IV40700] ([LOCNDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[STAXSCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PCTAXSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40700].[INCLDDINPLNNNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[PORETRNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[SOFULFILLMENTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[SORETURNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[BOMRCPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[MATERIALISSUEBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[MORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[REPAIRISSUESBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40700].[WMSINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40700].[PICKTICKETSITEOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40700].[BINBREAK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40700].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40700].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[IV40700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40700] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40700] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40700] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40700] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[IV40700] TO [rpt_warehouse manager]
GO

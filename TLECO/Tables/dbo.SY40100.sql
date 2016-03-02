CREATE TABLE [dbo].[SY40100]
(
[CLOSED] [tinyint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[ODESCTN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORIGIN] [tinyint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[PERNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSERIES_1] [tinyint] NOT NULL,
[PSERIES_2] [tinyint] NOT NULL,
[PSERIES_3] [tinyint] NOT NULL,
[PSERIES_4] [tinyint] NOT NULL,
[PSERIES_5] [tinyint] NOT NULL,
[PSERIES_6] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERDENDT] [datetime] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SY40100__DEX_ROW__5948936E] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glpPeriodSETPDeleteTrigger] on [dbo].[SY40100] for delete as  declare @MS_ITEM_2 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_2 = power(2,25)  select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business'  select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_2  insert  wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2 from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2  from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glpPeriodSETPUpdateTrigger] on [dbo].[SY40100] for update as  declare @MS_ITEM_2 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_2 = power(2,25)  select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business'  select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_2  insert  wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2 from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2  from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SY40100U] ON [dbo].[SY40100] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.SY40100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SY40100, inserted WHERE SY40100.SERIES = inserted.SERIES AND SY40100.ODESCTN = inserted.ODESCTN AND SY40100.FORIGIN = inserted.FORIGIN AND SY40100.PERIODID = inserted.PERIODID AND SY40100.YEAR1 = inserted.YEAR1 END set nocount off    
GO
ALTER TABLE [dbo].[SY40100] ADD CONSTRAINT [CK__SY40100__PERDEND__04DA9AE4] CHECK ((datepart(hour,[PERDENDT])=(0) AND datepart(minute,[PERDENDT])=(0) AND datepart(second,[PERDENDT])=(0) AND datepart(millisecond,[PERDENDT])=(0)))
GO
ALTER TABLE [dbo].[SY40100] ADD CONSTRAINT [CK__SY40100__PERIODD__05CEBF1D] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[SY40100] ADD CONSTRAINT [PKSY40100] PRIMARY KEY NONCLUSTERED  ([FORIGIN], [YEAR1], [PERIODID], [SERIES], [ODESCTN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SY40100] ON [dbo].[SY40100] ([FORIGIN], [PERIODDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SY40100] ON [dbo].[SY40100] ([FORIGIN], [SERIES], [ODESCTN], [PERIODDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40100] ON [dbo].[SY40100] ([FORIGIN], [YEAR1], [ODESCTN], [PERIODID], [SERIES]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SY40100] ON [dbo].[SY40100] ([FORIGIN], [YEAR1], [PERNAME], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40100] ON [dbo].[SY40100] ([FORIGIN], [YEAR1], [SERIES], [ODESCTN], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SY40100] ON [dbo].[SY40100] ([FORIGIN], [YEAR1], [SERIES], [PERIODID], [ODESCTN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SY40100] ON [dbo].[SY40100] ([PERIODID], [YEAR1], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40100] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[CLOSED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40100].[ODESCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[FORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40100].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40100].[PERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[PSERIES_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40100].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40100].[PERDENDT]'
GO
GRANT SELECT ON  [dbo].[SY40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY40100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY40100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY40100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY40100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SY40100] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[SY40100] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[SY40100] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[SY40100] TO [rpt_executive]
GO

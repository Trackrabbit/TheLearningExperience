CREATE TABLE [dbo].[SY40101]
(
[YEAR1] [smallint] NOT NULL,
[FSTFSCDY] [datetime] NOT NULL,
[LSTFSCDY] [datetime] NOT NULL,
[NUMOFPER] [smallint] NOT NULL,
[HISTORYR] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SY40101__DEX_ROW__3FDDC726] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_SY40101Ins] on [dbo].[SY40101] for insert as  declare @year      smallint,  @reconcile tinyint,  @status    smallint  select  @year = 0,  @reconcile = 0,  @status = 0  select @year = YEAR1 from inserted   exec aagCreateYear @year, @reconcile out, @status out    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glpPeriodHDRDeleteTrigger] on [dbo].[SY40101] for Delete as  declare @MS_ITEM_2 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_2 = power(2,25)  select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business'  select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_2  insert  wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2 from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2  from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glpPeriodHDRUpdateTrigger] on [dbo].[SY40101] for update as  declare @MS_ITEM_2 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_2 = power(2,25)  select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business'  select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_2  insert  wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2 from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_2  from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SY40101U] ON [dbo].[SY40101] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.SY40101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SY40101, inserted WHERE SY40101.YEAR1 = inserted.YEAR1 END set nocount off    
GO
ALTER TABLE [dbo].[SY40101] ADD CONSTRAINT [CK__SY40101__FSTFSCD__099F5001] CHECK ((datepart(hour,[FSTFSCDY])=(0) AND datepart(minute,[FSTFSCDY])=(0) AND datepart(second,[FSTFSCDY])=(0) AND datepart(millisecond,[FSTFSCDY])=(0)))
GO
ALTER TABLE [dbo].[SY40101] ADD CONSTRAINT [CK__SY40101__LSTFSCD__0A93743A] CHECK ((datepart(hour,[LSTFSCDY])=(0) AND datepart(minute,[LSTFSCDY])=(0) AND datepart(second,[LSTFSCDY])=(0) AND datepart(millisecond,[LSTFSCDY])=(0)))
GO
ALTER TABLE [dbo].[SY40101] ADD CONSTRAINT [PKSY40101] PRIMARY KEY NONCLUSTERED  ([YEAR1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40101] ON [dbo].[SY40101] ([FSTFSCDY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40101] ON [dbo].[SY40101] ([HISTORYR], [YEAR1]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40101] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40101].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40101].[FSTFSCDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40101].[LSTFSCDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40101].[NUMOFPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40101].[HISTORYR]'
GO
GRANT SELECT ON  [dbo].[SY40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY40101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY40101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY40101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY40101] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SY40101] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[SY40101] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[SY40101] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[SY40101] TO [rpt_executive]
GO

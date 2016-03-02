CREATE TABLE [dbo].[GL00100]
(
[ACTINDX] [int] NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTALIAS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNACSGMT] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[TPCLBLNC] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[DSPLKUPS] [binary] (4) NOT NULL,
[CNVRMTHD] [smallint] NOT NULL,
[HSTRCLRT] [numeric] (19, 7) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostSlsIn] [smallint] NOT NULL,
[PostIvIn] [smallint] NOT NULL,
[PostPurchIn] [smallint] NOT NULL,
[PostPRIn] [smallint] NOT NULL,
[ADJINFL] [tinyint] NOT NULL,
[INFLAREV] [int] NOT NULL,
[INFLAEQU] [int] NOT NULL,
[ACCTENTR] [tinyint] NOT NULL,
[USRDEFS1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEFS2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Clear_Balance] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL00100__DEX_ROW__209C87FC] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_GL00100Del] on [dbo].[GL00100] for delete as  declare @acctType smallint,  @mstrID   int,  @status   smallint  select  @acctType = 0,  @mstrID = 0,  @status = 0  select @acctType = ACCTTYPE, @mstrID = ACTINDX from deleted   if (@acctType < 3) exec aagDelMstrRecord @mstrID, 1, 0, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_GL00100Ins] on [dbo].[GL00100] for insert as  declare @acctType smallint,  @mstrID   int,  @status   smallint  select  @acctType = 0,  @mstrID = 0,  @status = 0  select @acctType = ACCTTYPE, @mstrID = ACTINDX from inserted   if (@acctType < 3) exec aagInsMstrRecord @mstrID, 1, 0, @status out    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[glpAccountMasterDeleteTrigger] on [dbo].[GL00100] for delete as  declare @MS_ITEM_3 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_3 =  power(2, 26) select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business' select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_3 insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3  from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3 from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName  delete from GL00100F1 from GL00100F1 f1, deleted d where f1.ACTINDX = d.ACTINDX  delete from GL00100F2 from GL00100F2 f2, deleted d where f2.ACTINDX = d.ACTINDX  delete from GL00100F3 from GL00100F3 f3, deleted d where f3.ACTINDX = d.ACTINDX  delete from GL00100F4 from GL00100F4 f4, deleted d where f4.ACTINDX = d.ACTINDX  delete frl_acct_code from frl_acct_code a, deleted d where a.acct_id = d.ACTINDX 
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[glpAccountMasterInsertTrigger] on [dbo].[GL00100] for insert as declare @cnt int declare @myproc varchar(8000) declare @act as varchar(1000) declare @numsegs int declare @natseg int DECLARE @SEGLENGTH INT  select @numsegs = (select count(*) from SY00300) select @natseg = (select SGMTNUMB from SY00300 where MNSEGIND = 1) select @cnt = 1  select * into #temp001 from inserted  select @myproc = 'insert into frl_acct_code  (acct_id,  entity_num,  acct_code,  acct_type,  acct_status,  acct_desc,  normal_bal,  acct_group,  nat_seg_code,  rollup_level,  activated_date,  last_used_date,  deactivated_date,  modify_flag  )  SELECT ACTINDX AS acct_id, 1 AS entity_num, '  select @act ='' while @cnt <= @numsegs begin  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt   select @act = @act + ' SUBSTRING(ACTNUMBR_' + ltrim(STR(@cnt)) + ',1, ' + str(@SEGLENGTH) + ' ) '   if @cnt < @numsegs  begin  select @act = @act + ' + '  end  select @cnt = @cnt + 1 end  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @natseg  select @myproc = @myproc + @act + ' AS acct_code,   ACCTTYPE AS acct_type, ACTIVE AS acct_status,   ACTDESCR AS acct_desc, TPCLBLNC + 1 AS normal_bal,   PSTNGTYP * 3 + 1 AS acct_group,   nat_seg_code = substring(ACTNUMBR_' + ltrim(str(@natseg)) + ',1,' + str(@SEGLENGTH) + ')'   select @cnt = 1  while @cnt <= @numsegs begin  if @cnt <> @natseg   begin  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt   select @myproc = @myproc + ' +  substring(ACTNUMBR_' + ltrim(str(@cnt)) + ',1,' + str(@SEGLENGTH) + ')'    end   select @cnt = @cnt + 1 end  select @myproc = @myproc + ' ,   0 AS rollup_level,  CREATDDT AS activated_date,   MODIFDT AS last_used_date, NULL AS deactivated_date,   0 AS modify_flag FROM #temp001 '  exec (@myproc) 
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[glpAccountMasterUpdateTrigger] on [dbo].[GL00100] for update as declare @MS_ITEM_3 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_3 =  power(2, 26) select @cNormal = 'GL_Normal' select @cClearing = 'GL_Clearing' select @cQuick = 'GL_Business'  select @cInterID = DB_Name() select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  if  update (ACTIVE)   or  update (ACCTTYPE) or  update (FXDORVAR) or  update (BALFRCLC) or  update (PSTNGTYP) or  update (DECPLACS) begin  update   wkPostingValidationState   set  GLBCHVAL = GLBCHVAL | @MS_ITEM_3   insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL )  select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3   from  SY00500 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)   and B.BCHSOURC IS NULL   insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL )  select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3   from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)   where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)   and B.BCHSOURC IS NULL  and  A.CMPNYNAM = @cCompanyName   end  if  update (ACTALIAS) or  update (ACTDESCR) or  update (ACCATNUM) begin  update GL00100F1  set GL00100F1.ACTALIAS = inserted.ACTALIAS,  GL00100F1.ACTDESCR = inserted.ACTDESCR,  GL00100F1.ACCATNUM = inserted.ACCATNUM  from  inserted  where  inserted.ACTINDX = GL00100F1.ACTINDX   update GL00100F2  set GL00100F2.ACTALIAS = inserted.ACTALIAS,  GL00100F2.ACTDESCR = inserted.ACTDESCR,  GL00100F2.ACCATNUM = inserted.ACCATNUM  from  inserted  where  inserted.ACTINDX = GL00100F2.ACTINDX   update GL00100F3  set GL00100F3.ACTALIAS = inserted.ACTALIAS,  GL00100F3.ACTDESCR = inserted.ACTDESCR,  GL00100F3.ACCATNUM = inserted.ACCATNUM  from  inserted  where  inserted.ACTINDX = GL00100F3.ACTINDX   update GL00100F4  set GL00100F4.ACTALIAS = inserted.ACTALIAS,  GL00100F4.ACTDESCR = inserted.ACTDESCR,  GL00100F4.ACCATNUM = inserted.ACCATNUM  from  inserted  where  inserted.ACTINDX = GL00100F4.ACTINDX end  declare @cnt int declare @myproc varchar(8000) declare @act as varchar(1000) declare @natact as varchar(1000) declare @numsegs int declare @natseg int DECLARE @SEGLENGTH INT  select @numsegs = (select count(*) from SY00300) select @natseg = (select SGMTNUMB from SY00300 where MNSEGIND = 1) select @cnt = 1  select * into #temp002 from inserted  select @act = '' while @cnt <= @numsegs begin   select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt   select @act = @act + ' SUBSTRING(i.ACTNUMBR_' + ltrim(STR(@cnt)) + ',1, ' + str(@SEGLENGTH) + ' ) '  if @cnt < @numsegs  begin  select @act = @act + ' + '  end  select @cnt = @cnt + 1 end  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @natseg  select @natact = ''  select @natact = @natact + ' substring(i.ACTNUMBR_' + ltrim(str(@natseg)) + ',1,' + str(@SEGLENGTH) + ')'   select @cnt = 1  while @cnt <= @numsegs begin  if @cnt <> @natseg   begin  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt    select @natact = @natact + ' +  substring(i.ACTNUMBR_' + ltrim(str(@cnt)) + ',1,' + str(@SEGLENGTH) + ')'   end   select @cnt = @cnt + 1 end  select @myproc = 'UPDATE frl_acct_code   SET  acct_id = i.ACTINDX, entity_num = 1,   acct_code = ' + @act + ' ,   acct_type =  i.ACCTTYPE, acct_status = i.ACTIVE ,   acct_desc = i.ACTDESCR , normal_bal = i.TPCLBLNC + 1 ,   acct_group = i.PSTNGTYP * 3 + 1 ,   nat_seg_code = ' + @natact + ' ,   rollup_level = 0,   activated_date = i.CREATDDT,   last_used_date =i. MODIFDT ,  deactivated_date = NULL,   modify_flag = 0   FROM #temp002 i where  acct_id = i.ACTINDX'  exec (@myproc) 
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[taAccountInsert] on [dbo].[GL00100] for insert, update as declare @iStatus  int, @MASTERDB char(15), @ACTINDX int, @ACTNUMBR_1 char(25), @ACTNUMBR_2 char(25), @ACTNUMBR_3 char(25), @ACTNUMBR_4 char(25), @ACTNUMBR_5 char(25), @ACTNUMBR_6 char(25), @ACTNUMBR_7 char(25), @ACTNUMBR_8 char(25), @ACTNUMBR_9 char(25), @ACTNUMBR_10 char(25), @ACTALIAS char(21), @MNACSGMT char(67), @ACCTTYPE smallint, @ACTDESCR char(51), @PSTNGTYP smallint,  @ACCATNUM smallint,  @ACTIVE tinyint, @TPCLBLNC smallint, @DECPLACS smallint, @FXDORVAR smallint, @BALFRCLC smallint, @DSPLKUPS binary, @CNVRMTHD smallint, @HSTRCLRT numeric(19,5), @NOTEINDX numeric(19,5), @CREATDDT datetime, @MODIFDT datetime, @USERDEF1 char(21), @USERDEF2 char(21), @PostSlsIn smallint, @PostIvIn smallint, @PostPurchIn smallint, @PostPRIn smallint, @ADJINFL tinyint, @INFLAREV int, @INFLAEQU int,  @ACCTENTR tinyint,			 @USRDEFS1 char(31),			 @USRDEFS2 char(31),			 @CStatement char(255),  @CStatement1 char(255),  @CStatement2 char(255),  @CStatement3 char(255),  @CStatement4 char(255),  @CStatement5 char(255),  @CStatement6 char(255),  @CStatement7 char(255),  @CStatement8 char(255),  @CStatement9 char(255),  @CStatement10 char(255),  @CStatement11 char(255), @CStatement12 char(255),  @CStatement13 char(255),  @CStatement14 char(255),  @CStatement15 char(255), @CStatement16 char(255) SET ANSI_PADDING ON if exists(select 1 from tempdb..sysobjects where name like '#SY_FM_Error_Log%') return select @MASTERDB = DB_Name() select  @ACTINDX = ACTINDX from inserted if exists (select 1 from tempdb..sysobjects where name = '##inserted') drop table ##inserted select * into ##inserted from inserted  if not exists (select 1 from tempdb..sysobjects where name = '#inserted') create table #inserted (ACTNUMBR_1 char(25), ACTNUMBR_2 char(25), ACTNUMBR_3 char(25),ACTNUMBR_4 char(25), ACTNUMBR_5 char(25),  ACTNUMBR_6 char(25), ACTNUMBR_7 char(25),ACTNUMBR_8 char(25), ACTNUMBR_9 char(25), ACTNUMBR_10 char(25) ) select @CStatement = 'insert into #inserted (' select @CStatement1 = '' select @CStatement1 = +rtrim(@CStatement1)+rtrim('ACTNUMBR_'+ltrim(str(s.SGMTNUMB))+',') from DYNAMICS..SY00302 s select @CStatement1 = substring(@CStatement1,1,len(@CStatement1)-1)  select @CStatement2 = ') select ' select @CStatement3 = '' select @CStatement3 = +rtrim(@CStatement3)+rtrim('ACTNUMBR_'+ltrim(str(s.SGMTNUMB))+',') from DYNAMICS..SY00302 s select @CStatement3 = substring(@CStatement3,1,len(@CStatement3)-1) select @CStatement4 = ' from ##inserted' exec (@CStatement + @CStatement1 + @CStatement2 + @CStatement3 + @CStatement4) select @CStatement  = ' declare @MAXSEG int ' select @CStatement1 = 'if not exists (select 1 from tempdb..sysobjects where name = ''##account'')'			 select @CStatement2 = 'create table ##account (ACTNUMBR_1 char(25), ACTNUMBR_2 char(25), ACTNUMBR_3 char(25), ' select @CStatement3 = 'ACTNUMBR_4 char(25), ACTNUMBR_5 char(25), ACTNUMBR_6 char(25), ACTNUMBR_7 char(25), ' select @CStatement4 = 'ACTNUMBR_8 char(25), ACTNUMBR_9 char(25), ACTNUMBR_10 char(25))'  select @CStatement5 = ' select @MAXSEG = MXNUMSEG from DYNAMICS..SY003001 (nolock) ' select @CStatement6 = ' insert into ##account select case when @MAXSEG > 0 then ACTNUMBR_1 else '''' end,' select @CStatement7 = ' case when @MAXSEG > 1 then ACTNUMBR_2 else '''' end,' select @CStatement8 = ' case when @MAXSEG > 2 then ACTNUMBR_3 else '''' end,' select @CStatement9 = ' case when @MAXSEG > 3 then ACTNUMBR_4 else '''' end,' select @CStatement10 = ' case when @MAXSEG > 4 then ACTNUMBR_5 else '''' end,' select @CStatement11 = ' case when @MAXSEG > 5 then ACTNUMBR_6 else '''' end,' select @CStatement12 = ' case when @MAXSEG > 6 then ACTNUMBR_7 else '''' end,' select @CStatement13 = ' case when @MAXSEG > 7 then ACTNUMBR_8 else '''' end,' select @CStatement14 = ' case when @MAXSEG > 8 then ACTNUMBR_9 else '''' end,' select @CStatement15 = ' case when @MAXSEG > 9 then ACTNUMBR_10 else '''' end' select @CStatement16 = ' from #inserted ' exec (@CStatement + @CStatement1 + @CStatement2 + @CStatement3 + @CStatement4 +  @CStatement5 + @CStatement6 + @CStatement7 + @CStatement8 + @CStatement9 + @CStatement10 + @CStatement11 + @CStatement12 + @CStatement13 + @CStatement14 + @CStatement15 + @CStatement16) select 	 @ACTNUMBR_1 = ACTNUMBR_1, @ACTNUMBR_2 = ACTNUMBR_2, @ACTNUMBR_3 = ACTNUMBR_3, @ACTNUMBR_4 = ACTNUMBR_4, @ACTNUMBR_5 = ACTNUMBR_5, @ACTNUMBR_6 = ACTNUMBR_6, @ACTNUMBR_7 = ACTNUMBR_7, @ACTNUMBR_8 = ACTNUMBR_8, @ACTNUMBR_9 = ACTNUMBR_9, @ACTNUMBR_10 = ACTNUMBR_10 from ##account truncate table ##account select @ACTALIAS = ACTALIAS, @MNACSGMT = MNACSGMT, @ACCTTYPE = ACCTTYPE, @ACTDESCR = ACTDESCR, @PSTNGTYP = PSTNGTYP, @ACCATNUM = ACCATNUM, @ACTIVE = ACTIVE, @TPCLBLNC = TPCLBLNC, @DECPLACS = DECPLACS, @FXDORVAR = FXDORVAR, @BALFRCLC = BALFRCLC, @DSPLKUPS = DSPLKUPS, @CNVRMTHD = CNVRMTHD, @HSTRCLRT = HSTRCLRT, @NOTEINDX = NOTEINDX, @CREATDDT = CREATDDT, @MODIFDT = MODIFDT, @USERDEF1 = USERDEF1, @USERDEF2 = USERDEF2, @PostSlsIn = PostSlsIn, @PostIvIn = PostIvIn, @PostPurchIn = PostPurchIn, @PostPRIn = PostPRIn, @ADJINFL = ADJINFL, @INFLAREV = INFLAREV, @INFLAEQU = INFLAEQU, @ACCTENTR = ACCTENTR,			 @USRDEFS1 = USRDEFS1,			 @USRDEFS2 = USRDEFS2 			 from  inserted exec @iStatus = DYNAMICS.dbo.TA_ParentInsertGL @MASTERDB, @ACTINDX , @ACTNUMBR_1,  @ACTNUMBR_2,  @ACTNUMBR_3,  @ACTNUMBR_4,  @ACTNUMBR_5,  @ACTNUMBR_6,  @ACTNUMBR_7,  @ACTNUMBR_8,  @ACTNUMBR_9, @ACTNUMBR_10,  @ACTALIAS , @MNACSGMT , @ACCTTYPE , @ACTDESCR , @PSTNGTYP ,  @ACCATNUM ,  @ACTIVE , @TPCLBLNC , @DECPLACS , @FXDORVAR , @BALFRCLC , @DSPLKUPS , @CNVRMTHD , @HSTRCLRT , @NOTEINDX , @CREATDDT , @MODIFDT , @USERDEF1 , @USERDEF2 , @PostSlsIn , @PostIvIn , @PostPurchIn , @PostPRIn , @ADJINFL , @INFLAREV , @INFLAEQU , @ACCTENTR ,				 @USRDEFS1 ,				 @USRDEFS2  				 SET ANSI_PADDING OFF 
GO
DISABLE TRIGGER [dbo].[taAccountInsert] ON [dbo].[GL00100]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL00100U] ON [dbo].[GL00100] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.GL00100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL00100, inserted WHERE GL00100.ACTINDX = inserted.ACTINDX END set nocount off    
GO
ALTER TABLE [dbo].[GL00100] ADD CONSTRAINT [CK__GL00100__CREATDD__1EB43F8A] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[GL00100] ADD CONSTRAINT [CK__GL00100__MODIFDT__1FA863C3] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[GL00100] ADD CONSTRAINT [PKGL00100] PRIMARY KEY NONCLUSTERED  ([ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5GL00100] ON [dbo].[GL00100] ([ACCATNUM], [MNACSGMT], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL00100] ON [dbo].[GL00100] ([ACCTTYPE], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL00100] ON [dbo].[GL00100] ([ACTALIAS], [ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL00100] ON [dbo].[GL00100] ([ACTDESCR], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6GL00100] ON [dbo].[GL00100] ([ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7GL00100] ON [dbo].[GL00100] ([MNACSGMT], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL00100] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTALIAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[MNACSGMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[TPCLBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[DSPLKUPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[CNVRMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00100].[HSTRCLRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[PostSlsIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[PostIvIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[PostPurchIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[PostPRIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ADJINFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[INFLAREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[INFLAEQU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[ACCTENTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[USRDEFS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100].[USRDEFS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100].[Clear_Balance]'
GO
GRANT REFERENCES ON  [dbo].[GL00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[GL00100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[GL00100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[GL00100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[GL00100] TO [rpt_executive]
GO

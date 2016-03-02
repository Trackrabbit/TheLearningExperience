SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smLoadDefaultAccounts] @I_iBusiness    smallint = NULL, @I_iIndustry    smallint = NULL, @I_sCompanyid   smallint = NULL, @I_iSQLSessionID        int = NULL, @O_iErrorState  int = NULL output  as  declare  @iAcctNumber    char(4),  @iActIndex      int,  @iCount         int,  @iRowCount      int,  @iRstatus               int,  @mNoteIndex     numeric(19,5),  @tTransaction   tinyint,  @MAX_BIN        binary(4),  @cAccountSegmentSeperator       char(1),  @tSeg1Length                            smallint,  @tSeg2Length                            smallint,  @tSeg3Length                            smallint,  @cSeg1Length varchar(2),  @cSeg2Length varchar(2),  @cSeg3Length varchar(2),  @sDefaultDate char(12),  @iStatus int  if @I_iBusiness is NULL or  @I_iIndustry is NULL or  @I_sCompanyid is NULL or  @I_iSQLSessionID is NULL begin  select @O_iErrorState = 20099  return end else begin  select @O_iErrorState = 0 end  create table #GLACCOUNT (  ACTNUMBER       char(4) not null,  TOTAL   int not null )  create table #GL00100 (  ACTINDX   int not null,   ACTNUMBR_1  char(4) not null,   ACTNUMBR_2  char(4) not null,   ACTNUMBR_3  char(4) not null,  ACTALIAS  char(20) not null,   MNACSGMT  char(66) not null,   ACCTTYPE  smallint not null,   ACTDESCR  char(50) not null,   PSTNGTYP  smallint not null,   ACCATNUM  smallint not null,   ACTIVE    tinyint not null,   TPCLBLNC  smallint not null,   DECPLACS  smallint not null,   FXDORVAR  smallint not null,   BALFRCLC  smallint not null,   DSPLKUPS  binary(4) not null,   CURNCYID  char(15) not null,   CNVRMTHD  smallint not null,   HSTRCLRT  numeric(19,5) not null,   NOTEINDX  numeric(19,5) not null,   CREATDDT  datetime not null,   MODIFDT   datetime not null,   USERDEF1  char(20) not null,   USERDEF2  char(20) not null,  PostSlsIn smallint not null,  PostIvIn  smallint not null,  PostPurchIn smallint not null,  PostPRIn  smallint not null,  ADJINFL tinyint not null,  INFLAREV int not null,  INFLAEQU int not null)  select @iActIndex = 0,  @iCount = 0,  @iRstatus = 1,  @mNoteIndex = 0.0,  @iStatus = 0  select @MAX_BIN = 0xFFFFFFFF  exec @iStatus = smGetDefaultDate @sDefaultDate output  select  @tSeg1Length = LOFSGMNT from  SY00300 where  SGMTNUMB = 1  if @@rowcount <> 1 begin  select @O_iErrorState = 20451  return end  select  @tSeg2Length = LOFSGMNT from  SY00300 where  SGMTNUMB = 2  if @@rowcount <> 1 begin   select @O_iErrorState = 20451  return end  select  @tSeg3Length = LOFSGMNT from  SY00300 where  SGMTNUMB = 3  if @@rowcount <> 1 begin  select @O_iErrorState = 20451  return end  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  update  DYNAMICS.dbo.SY01500 set  NOTEINDX = NOTEINDX + 1 where  CMPANYID = @I_sCompanyid  select  @mNoteIndex = NOTEINDX - 1,  @cAccountSegmentSeperator = ACSEGSEP from    DYNAMICS.dbo.SY01500  where  CMPANYID = @I_sCompanyid  if @mNoteIndex is NULL or @cAccountSegmentSeperator is NULL begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20255   return end else begin  select @mNoteIndex = @mNoteIndex + 1.0 end  select @iActIndex = (select   max(ACTINDX)   from   GL00105 with (holdlock))  if @iActIndex is NULL begin  select @iActIndex = 1 end else begin  select @iActIndex = @iActIndex + 1 end  if @I_iBusiness = 1 begin   select   @iCount = count(BUSNESS1)  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS1 = 1  and     INDUSTYP = @I_iIndustry   insert into  #GL00100 (ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTALIAS,  MNACSGMT,  ACCTTYPE,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  ACTIVE,  TPCLBLNC,  DECPLACS,  FXDORVAR,  BALFRCLC,  DSPLKUPS,  CURNCYID,  CNVRMTHD,  HSTRCLRT,  NOTEINDX,  CREATDDT,  MODIFDT,  USERDEF1,  USERDEF2,  PostSlsIn,  PostIvIn,  PostPurchIn,  PostPRIn,  ADJINFL,  INFLAREV,  INFLAEQU)  select   0,  DEFCHRAC_1,  DEFCHRAC_2,  DEFCHRAC_3,  '',  '',  1,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  1,  TPCLBLNC,  0,  0,  0,  @MAX_BIN,  '',  0,  0,  0,  @sDefaultDate,  @sDefaultDate,  '',  '',  1,  1,  1,  1,  0,  0,  0  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS1 = 1  and     INDUSTYP = @I_iIndustry  end else if @I_iBusiness = 2 begin   select   @iCount = count(BUSNESS2)  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS2 = 1  and     INDUSTYP = @I_iIndustry   insert into  #GL00100 (ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTALIAS,  MNACSGMT,  ACCTTYPE,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  ACTIVE,  TPCLBLNC,  DECPLACS,  FXDORVAR,  BALFRCLC,  DSPLKUPS,  CURNCYID,  CNVRMTHD,  HSTRCLRT,  NOTEINDX,  CREATDDT,  MODIFDT,  USERDEF1,  USERDEF2,  PostSlsIn,  PostIvIn,  PostPurchIn,  PostPRIn,  ADJINFL,  INFLAREV,  INFLAEQU)  select   0,  DEFCHRAC_1,  DEFCHRAC_2,  DEFCHRAC_3,  '',  '',  1,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  1,  TPCLBLNC,  0,  0,  0,  @MAX_BIN,  '',  0,  0,  0,  @sDefaultDate,  @sDefaultDate,  '',  '',  1,  1,  1,  1,  0,  0,  0  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS2 = 1  and     INDUSTYP = @I_iIndustry end else if @I_iBusiness = 3 begin   select   @iCount = count(BUSNESS3)  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS3 = 1  and     INDUSTYP = @I_iIndustry   insert into  #GL00100 (ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTALIAS,  MNACSGMT,  ACCTTYPE,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  ACTIVE,  TPCLBLNC,  DECPLACS,  FXDORVAR,  BALFRCLC,  DSPLKUPS,  CURNCYID,  CNVRMTHD,  HSTRCLRT,  NOTEINDX,  CREATDDT,  MODIFDT,  USERDEF1,  USERDEF2,  PostSlsIn,  PostIvIn,  PostPurchIn,  PostPRIn,  ADJINFL,  INFLAREV,  INFLAEQU)  select   0,  DEFCHRAC_1,  DEFCHRAC_2,  DEFCHRAC_3,  '',  '',  1,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  1,  TPCLBLNC,  0,  0,  0,  @MAX_BIN,  '',  0,  0,  0,  @sDefaultDate,  @sDefaultDate,  '',  '',  1,  1,  1,  1,  0,  0,  0  from  DYNAMICS.dbo.DEFLTCOA   where  BUSNESS3 = 1  and     INDUSTYP = @I_iIndustry end else begin  if @tTransaction = 1  rollback transaction  select  @O_iErrorState = 20257  return end  if @@rowcount <> @iCount begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20256  return end  set rowcount 1  while @iRstatus <> 0 begin   update  #GL00100  set   ACTINDX = @iActIndex,  NOTEINDX = @mNoteIndex  where  ACTINDX = 0   select @iRstatus = @@rowcount,  @iActIndex = (@iActIndex + 1),  @mNoteIndex = (@mNoteIndex +1.0)  end  set rowcount 0  exec(' insert into  GL00100 (ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTALIAS,  MNACSGMT,  ACCTTYPE,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  ACTIVE,  TPCLBLNC,  DECPLACS,  FXDORVAR,  BALFRCLC,  DSPLKUPS,   CNVRMTHD,  HSTRCLRT,  NOTEINDX,  CREATDDT,  MODIFDT,  USERDEF1,  USERDEF2,  PostSlsIn,  PostIvIn,  PostPurchIn,  PostPRIn,  ADJINFL,  INFLAREV,  INFLAEQU,  ACCTENTR)  select  ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTALIAS,  MNACSGMT,  ACCTTYPE,  ACTDESCR,  PSTNGTYP,  ACCATNUM,  ACTIVE,  TPCLBLNC,  DECPLACS,  FXDORVAR,  BALFRCLC,  DSPLKUPS,   CNVRMTHD,  HSTRCLRT,  NOTEINDX,   CREATDDT,  MODIFDT,  USERDEF1,  USERDEF2,  PostSlsIn,  PostIvIn,  PostPurchIn,  PostPRIn,  ADJINFL,  INFLAREV,  INFLAEQU,  1   from  #GL00100')  select @cSeg1Length = convert(char(2),@tSeg1Length) select @cSeg2Length = convert(char(2),@tSeg2Length) select @cSeg3Length = convert(char(2),@tSeg3Length) exec(' insert into   GL00105   (ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  ACTNUMST)  select   ACTINDX,  ACTNUMBR_1,  ACTNUMBR_2,  ACTNUMBR_3,  substring(ACTNUMBR_1, 1,' + @cSeg1Length + ') + ''' + @cAccountSegmentSeperator + ''' +  substring(ACTNUMBR_2, 1,' + @cSeg2Length + ') + ''' + @cAccountSegmentSeperator + ''' +  substring(ACTNUMBR_3, 1,' + @cSeg3Length + ')  from  #GL00100')  insert into   #GLACCOUNT(ACTNUMBER,TOTAL) select   ACTNUMBR_1,   count(*) from   #GL00100 group by   ACTNUMBR_1  set rowcount 1  select @iAcctNumber = ACTNUMBER from #GLACCOUNT  select @iRowCount = @@rowcount  while @iRowCount = 1 begin  insert   into  GL40200  (SGMTNUMB,  SGMNTID,  DSCRIPTN,  SEGCOUNT,  NOTEINDX)   select  1,  @iAcctNumber,  '',  TOTAL,  @mNoteIndex  from  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   delete  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   select @iAcctNumber = ACTNUMBER from #GLACCOUNT   select @iRowCount = @@rowcount   select @mNoteIndex = @mNoteIndex + 1.0 end  set rowcount 0  insert into   #GLACCOUNT(ACTNUMBER,TOTAL) select   ACTNUMBR_2,   count(*) from   #GL00100 group by   ACTNUMBR_2  set rowcount 1  select @iAcctNumber = ACTNUMBER from #GLACCOUNT  select @iRowCount = @@rowcount  while @iRowCount = 1 begin  insert   into  GL40200  (SGMTNUMB,  SGMNTID,  DSCRIPTN,  SEGCOUNT,  NOTEINDX)   select  2,  @iAcctNumber,  '',  TOTAL,  @mNoteIndex  from  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   delete  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   select @iAcctNumber = ACTNUMBER from #GLACCOUNT   select @iRowCount = @@rowcount   select @mNoteIndex = @mNoteIndex + 1.0 end  set rowcount 0  insert into   #GLACCOUNT(ACTNUMBER,TOTAL) select   ACTNUMBR_3,   count(*) from   #GL00100 group by   ACTNUMBR_3  set rowcount 1  select @iAcctNumber = ACTNUMBER from #GLACCOUNT  select @iRowCount = @@rowcount  while @iRowCount = 1 begin  insert   into  GL40200  (SGMTNUMB,  SGMNTID,  DSCRIPTN,  SEGCOUNT,  NOTEINDX)   select  3,  @iAcctNumber,   '',  TOTAL,  @mNoteIndex  from  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   delete  #GLACCOUNT  where  ACTNUMBER = @iAcctNumber   select @iAcctNumber = ACTNUMBER from #GLACCOUNT   select @iRowCount = @@rowcount   select @mNoteIndex = @mNoteIndex + 1.0 end  set rowcount 0  update   DYNAMICS.dbo.SY01500 set    NOTEINDX = @mNoteIndex where   CMPANYID = @I_sCompanyid  if @tTransaction = 1  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[smLoadDefaultAccounts] TO [DYNGRP]
GO
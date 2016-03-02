SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagAdminVen_Postthrw_CreateAA]  @Batch_numbr as char(20)  AS  DECLARE  @DocNumbr_memo as char(21),  @DocNumbr_memoold  as char(21),  @Docnumbr as char(21),  @Accindx as int,  @aagGetHdrID as int,  @aagGetDistID as int,  @dbtamt as numeric(19,5),  @crtamt as numeric(19,5),  @ordbtamt as numeric(19,5),  @orcrtamt as numeric(19,5),  @bachtotal as numeric(19,5),  @cuncyid as char(15),  @Currncy as char(15),  @curnindx as int,  @distyp as int,  @seqno as int ,  @i as int,  @intrid as char(5),  @decplcs as smallint,  @xchgrate as numeric(19,7),  @ratcalc as smallint,  @ratetypid  as char(15),  @exgtablid  as char(15),  @denxrate as numeric(19,7),  @mctrxstat as smallint,  @aacustid as char(15),  @aavenid as char(15),  @aasiteid as char(11),  @aaitemid as char(31),  @aacpystus as smallint,  @noteindx as numeric(19,5),  @rec as int,  @actindx as int,  @aatrxdimid as int,  @aatrxdimdflt as int,  @flag  as int,  @aaSubLedDistID as int,  @aagGetGLWHdrID as int,  @aagGetGLHdrID as int,  @aagNextGLID as int,  @aaGLWorkDistID as int,  @aaSubLedgerAssignID as int,  @aaGLHdrID  as int,  @aaGLDistID as int,  @V_HdrID as int,  @V_TrimID as int,  @year1 as int,  @aatrxsrc as char(15),  @aaGLTRXSource as char(13),  @aaGLTRXSrc as char(13),  @GLPOSTDT as datetime,  @NUMOFTRX as int,  @Text as char(1000),  @dat as char(20),  @actdescr as char(51),  @BCHTOTAL as numeric(9,5),  @ACCTTYPE as int,  @seq as int,  @SOURCDOC as char(11),  @actnumst as char(129),  @aatrxdimcode as int,  @aatrxdimid1 as int,  @aatrxdimcode1 as int,  @aaSubLedgerHdrID01 as int,  @aaSubLedgerDistID01 as int,  @DEBITAMT01 as numeric(19,5),  @CREDITAMT01 as numeric(19,5),  @ORDBTMAT as numeric(19,5),  @ORCRTMAT as numeric(19,5),  @PER as int,  @asinID as int,  @aaGLAssignID as int,  @ACCTTYPE002 as int,  @ACCTTYPE003 as int,  @counter as int,  @aaGLHdrID_old as int, @Exe_Str as char(200), @FUNLCURR char(15), @CURNCYID char(15)  BEGIN   set @i=0   set @seq=0    select @FUNLCURR = FUNLCURR from MC40000   if (select AUTPSTGL from SY02300 where SERIES=3 and TRXSOURC in(select TRANSVAL from DYNAMICS..SY05300 where UNTRSVAL='Receivables Sales Entry'))=1   BEGIN   set @Exe_Str=''  set @Exe_Str='DECLARE Docnm_Cursor CURSOR FOR   Select DOCNUMBR from nsaTW_RM10301 where BACHNUMB =''' + @Batch_numbr +''''  + 'OPEN Docnm_Cursor'   exec (@Exe_Str)   FETCH NEXT FROM Docnm_Cursor INTO @DocNumbr_memo   WHILE @@FETCH_STATUS = 0   BEGIN   set @Exe_Str=''  set @Exe_Str='DECLARE Orw_Docnm_Cursor CURSOR FOR   Select APFRDCNM from nsaWW_RM00100 where APTODCNM ='''+ @DocNumbr_memo +''''   + 'OPEN Orw_Docnm_Cursor '   exec (@Exe_Str)   FETCH NEXT FROM Orw_Docnm_Cursor INTO @Docnumbr   WHILE @@FETCH_STATUS = 0   BEGIN   DECLARE aaDist_Cursor CURSOR FOR   Select DSTINDX from RM10101 where DOCNUMBR =@DocNumbr_memo   OPEN aaDist_Cursor   FETCH NEXT FROM aaDist_Cursor INTO @Accindx   WHILE @@FETCH_STATUS = 0   BEGIN   select @aacustid=CUSTNMBR,@distyp=DISTTYPE,@dbtamt=DEBITAMT,@crtamt=CRDTAMNT,@cuncyid=CURNCYID,@curnindx=CURRNIDX,@orcrtamt=ORCRDAMT,@ordbtamt=ORDBTAMT from RM10101 where DOCNUMBR= @DocNumbr_memo and DSTINDX= @Accindx   IF (select AUTPSTGL from SY02300 where SERIES=3 and TRXSOURC in(select TRANSVAL from DYNAMICS..SY05300 where UNTRSVAL='Receivables Sales Entry'))=1   select @intrid=INTERID,@decplcs=DECPLACS,@ratetypid=RATETPID,@exgtablid=EXGTBLID,@xchgrate=XCHGRATE,@ratcalc=RTCLCMTD,@denxrate=DENXRATE,@mctrxstat=MCTRXSTT,   @aacustid=aaCustID,@aavenid=aaVendID ,@aasiteid=aaSiteID,@aaitemid=aaItemID,@aacpystus=aaCopyStatus from AAG20001   where aaSubLedgerHdrID in(select aaSubLedgerHdrID from AAG20000 where  DOCNUMBR=@Docnumbr)   ELSE   BEGIN   Select @cuncyid=CURNCYID,@curnindx=CURRNIDX,@exgtablid=EXGTBLID,@ratetypid=RATETPID,@xchgrate=XCHGRATE,@ratcalc=RTCLCMTD,@denxrate=DENXRATE,@mctrxstat=MCTRXSTT   from GL10000 where DTAControlNum=@Docnumbr   Select Top 1 @decplcs=DECPLACS,@aacpystus=aaCopyStatus from AAG10001 where aaGLWorkHdrID in (Select aaGLWorkHdrID from AAG10000 where JRNENTRY in(select JRNENTRY from GL10000 where DTAControlNum=@Docnumbr)             )   END   Select  @actnumst=ACTNUMST from GL00105 where ACTINDX=@Accindx   Select  @actdescr=ACTDESCR ,@ACCTTYPE = ACCTTYPE from GL00100 where ACTINDX=@Accindx   select @aagNextGLID = JRNENTRY from GL20000 where ORDOCNUM = @DocNumbr_memo    select @aaGLHdrID=aaGLHdrID from AAG30000 where JRNENTRY=@aagNextGLID    select @aaGLDistID = isnull(max(aaGLDistID),0) + 1 from AAG30001   where aaGLHdrID = @aaGLHdrID    select top 1 @CURNCYID = CURNCYID from RM10101 where DOCNUMBR= @DocNumbr_memo  if  @FUNLCURR = @CURNCYID   begin  SELECT @ordbtamt = @dbtamt, @orcrtamt = @crtamt  end    if (select count(*) from AAG30001 where aaGLHdrID=@aaGLHdrID and [aaGLDistID]=@aaGLDistID )=0   BEGIN   SET @i = @i + 1   SET @seqno =@i*16384   select @noteindx = isnull(max(NOTEINDX),0) + 1 from AAG20002   SELECT  @ACCTTYPE003 = ACCTTYPE FROM GL00100 WHERE ACTINDX=@Accindx   INSERT INTO AAG30001   ([aaGLHdrID],[aaGLDistID],[INTERID],[CorrespondingUnit]   ,[ACTINDX],[ACCTTYPE],[aaBrowseType],[DECPLACS],[DEBITAMT]   ,[CRDTAMNT],[ORDBTAMT],[ORCRDAMT],[CURNCYID],[CURRNIDX]   ,[RATETPID],[EXGTBLID],[XCHGRATE],[EXCHDATE],[TIME1]   ,[RTCLCMTD],[DENXRATE],[MCTRXSTT],[SEQNUMBR]   ,[aaCustID],[aaVendID],[aaSiteID],[aaItemID],[aaCopyStatus]   ,[aaChangeDate],[aaChangeTime])   VALUES   (@aaGLHdrID,@aaGLDistID,isnull(@intrid,''),'',@Accindx,@ACCTTYPE003,1,isnull(@decplcs,2)   ,@dbtamt,@crtamt,@ordbtamt,@orcrtamt,@cuncyid,@curnindx,isnull(@ratetypid,'')   ,isnull(@exgtablid,''),isnull(@xchgrate,0),'' ,'',isnull(@ratcalc,0),isnull(@denxrate,0),isnull(@mctrxstat,0),@seqno,isnull(@aacustid,'')   ,isnull(@aavenid,'') ,isnull(@aasiteid,''),isnull(@aaitemid,''),isnull(@aacpystus,0),'','')    if (Select Count(*) from AAG30002 where [aaGLHdrID]=@aaGLHdrID and [aaGLDistID]=@aaGLDistID)=0   BEGIN   INSERT INTO AAG30002   ([aaGLHdrID],[aaGLDistID],[aaGLAssignID],[DEBITAMT]   ,[CRDTAMNT],[ORDBTAMT],[ORCRDAMT],[aaAssignedPercent]   ,[DistRef],[NOTEINDX])   VALUES   (@aaGLHdrID ,@aaGLDistID,1,@dbtamt,@crtamt,@ordbtamt,@orcrtamt   ,10000,'',@noteindx)   END    DECLARE outer_aaCode30003 CURSOR FOR   SELECT ACTINDX,aaGLDistID from AAG30001 where aaGLHdrID =@aaGLHdrID   OPEN outer_aaCode30003   FETCH NEXT FROM outer_aaCode30003 INTO @actindx,@aaGLDistID   WHILE @@FETCH_STATUS = 0   BEGIN   SELECT @rec=count(*) from AAG00202 where aaAcctClassID in (Select aaAcctClassID from AAG00200 where ACTINDX=@actindx)   IF @rec > 0   BEGIN     DECLARE aaCode30003 CURSOR FOR   SELECT aaTrxDimID,aaTrxDimCodeIDDflt from AAG00202 where aaAcctClassID in (Select aaAcctClassID from AAG00200 where ACTINDX=@actindx)    OPEN aaCode30003   FETCH NEXT FROM aaCode30003 INTO @aatrxdimid,@aatrxdimdflt   WHILE @@FETCH_STATUS = 0   BEGIN    IF (select count(*) from AAG30003 where aaGLHdrID=@aaGLHdrID and aaGLDistID=@aaGLDistID and aaGLAssignID=1 and aaTrxDimID=@aatrxdimid)=0   INSERT INTO AAG30003   ([aaGLHdrID],[aaGLDistID],[aaGLAssignID],[aaTrxDimID]   ,[aaTrxCodeID])   VALUES   (@aaGLHdrID,@aaGLDistID,1,@aatrxdimid,@aatrxdimdflt)   FETCH NEXT FROM aaCode30003 INTO @aatrxdimid,@aatrxdimdflt   END   CLOSE aaCode30003   DEALLOCATE aaCode30003   END   FETCH NEXT FROM outer_aaCode30003 INTO @actindx,@aaGLDistID   END   CLOSE outer_aaCode30003   DEALLOCATE outer_aaCode30003    END   FETCH NEXT FROM aaDist_Cursor INTO @Accindx   END    CLOSE aaDist_Cursor   DEALLOCATE aaDist_Cursor    FETCH NEXT FROM Orw_Docnm_Cursor INTO @Docnumbr   END   CLOSE Orw_Docnm_Cursor   DEALLOCATE Orw_Docnm_Cursor   FETCH NEXT FROM Docnm_Cursor INTO @DocNumbr_memo   END   CLOSE Docnm_Cursor   DEALLOCATE Docnm_Cursor   END  END     
GO
GRANT EXECUTE ON  [dbo].[aagAdminVen_Postthrw_CreateAA] TO [DYNGRP]
GO

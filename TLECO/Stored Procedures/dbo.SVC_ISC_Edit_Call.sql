SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_ISC_Edit_Call]  (@callnbr char(11) = NULL,  @adrscode varchar(15) = NULL,  @address1 varchar(31) = NULL,  @address2 varchar(31) = NULL,  @city varchar(31) = NULL,  @statecd varchar(30) = NULL,  @zip varchar(11) = NULL,  @svcdescr varchar(61) = NULL,  @cntcprsn varchar(31) = NULL,  @phone1 varchar(21) = NULL,  @pordnmbr varchar(21) = NULL,  @equipid integer = NULL,  @item varchar(31) = NULL,  @problem varchar(11) = NULL,  @CONTNBR varchar(10) = NULL,  @rqstdate varchar(30) = NULL,  @rqsttime varchar(30) = NULL,  @txtfield text,  @Serial char(15)= NULL,  @address3 varchar(31) = NULL,  @LineSeqNumber varchar(9)=NULL,  @custnmbr varchar(15) = NULL   ) as declare @newcallnbr char(11) declare @tempadrscode varchar(15) declare @custname varchar(65) declare @retadrs varchar(15) declare @tempaddress1 varchar(31) declare @tempaddress2 varchar(31) declare @tempaddress3 varchar(31) declare @tempcity varchar(31) declare @tempstatecd varchar(30) declare @tempzip varchar(11) declare @tempcountry varchar(21) declare @tempphone1 varchar(21) declare @taxschid varchar(15) declare @prclevel varchar(15) declare @taxexmt1 varchar(25) declare @taxexmt2 varchar(25) declare @pymtrmid varchar(21) declare @slspersonid varchar(15) declare @svcarea varchar(10) declare @techid varchar(10) declare @timezone varchar(3) declare @offid varchar(10) declare @entdte datetime declare @enttme datetime declare @tempcntcprsn varchar(31) declare @default_status varchar(3) declare @prioritylevel smallint declare @noteindx numeric(19,5) declare @entrydate datetime declare @entrytime datetime DECLARE @@ptrval varbinary(16) declare @returnchar varchar(2) declare @NEWLINE integer declare @msg varchar(255) declare @CurrencyID char(15) ,  @BillToCustomer varchar(15) ,  @BillToAddress varchar(15) ,  @OnHold tinyint,  @PrintToWeb tinyint declare @country varchar(21) declare @consts numeric(9)   if @CONTNBR is null or @CONTNBR = ''  begin  select @consts = 0  end else  begin  select @consts = 2  end  if @callnbr is NULL return select  @prioritylevel = 0,  @techid = ' ',  @entrydate = CONVERT(varchar(10),GETDATE(),101) + ' 00:00:00:00',  @entrytime = '1/1/1900 ' + CONVERT(varchar(10),GETDATE(),108)  exec SVC_Get_Customer_Info @custnmbr, @adrscode OUTPUT,   @custname output, @retadrs output, @tempcntcprsn output,  @tempphone1 output, @tempaddress1 output, @tempaddress2 output,@tempaddress3 output,  @tempcity output, @tempstatecd output, @tempzip output, @tempcountry output,  @taxschid output, @prclevel output,   @taxexmt1 output, @taxexmt2 output, @pymtrmid output,  @slspersonid output,  @svcarea output, @offid output, @timezone output,   @CurrencyID OUTPUT,  @BillToCustomer OUTPUT,  @BillToAddress OUTPUT ,  @OnHold OUTPUT if (@cntcprsn is NULL) or (@cntcprsn = '') select @cntcprsn = @tempcntcprsn if (@address1 is NULL) or (@address1 = '') begin  select    @address1 = @tempaddress1,  @address2 = @tempaddress2,  @address3 = @tempaddress3,  @city = @tempcity,  @statecd = @tempstatecd,  @country = @tempcountry,  @zip = @tempzip end if (@phone1 is NULL) or (@phone1 = '') select @phone1 = @tempphone1 begin transaction select   @default_status = SRVSTAT,  @custnmbr = CUSTNMBR,  @techid = TECHID,  @noteindx = NOTEINDX  from SVC00200 where  SVC00200.SRVRECTYPE = 2 AND  SVC00200.CALLNBR = @callnbr exec SVC_UpdateTextObject @noteindx OUTPUT, @entrydate, @entrytime, @txtfield update SVC00200   set  SVC00200.SVCDESCR = IsNull(@svcdescr,''),  SVC00200.ADRSCODE = IsNull(@adrscode,''),  SVC00200.ADDRESS1 = IsNull(@address1,''),  SVC00200.ADDRESS2 = IsNull(@address2,''),  SVC00200.ADDRESS3 = IsNull(@address3,''),  SVC00200.CITY = IsNull(@city,''),  SVC00200.STATE = IsNull(@statecd,''),  SVC00200.ZIP = IsNull(@zip,''),  SVC00200.COUNTRY = IsNull(@country,''),  SVC00200.CNTCPRSN = IsNull(@cntcprsn,''),  SVC00200.PHONE1 = IsNull(@phone1,''),  SVC00200.PORDNMBR = IsNull(@pordnmbr,''),  SVC00200.CONTNBR = IsNull(@CONTNBR,''),  SVC00200.ETADTE = @rqstdate,  SVC00200.ETATME = @rqsttime,   SVC00200.NOTEINDX =@noteindx,  SVC00200.SVC_Contract_Line_SEQ = @LineSeqNumber  where  SVC00200.SRVRECTYPE = 2 and  SVC00200.CALLNBR = @callnbr  select @NEWLINE = max(LNITMSEQ) + 1 from SVC00210 where SRVRECTYPE = 2 and CALLNBR = @callnbr  insert SVC00210 values  (@callnbr,2,@NEWLINE,@default_status,@default_status,@techid,'Updated by customer via eServiceCalls ' + @custnmbr,'SYSTEM',CONVERT(varchar(10),GETDATE(),101) + ' 00:00:00','01/01/1900 ' + CONVERT(varchar(10),GETDATE(),108)) commit transaction begin transaction  if (@equipid is NULL) select @equipid = 0 if (@item = 'NONE') select @item = '' if (@problem = 'NONE') select @problem = ''  if @equipid <> 0 BEGIN  select   @item = SVC00300.ITEMNMBR  from  SVC00300  where  SVC00300.EQUIPID = @equipid  END if (select count(*) from SVC00202 where SVC00202.SRVRECTYPE = 2 and  SVC00202.CALLNBR = @callnbr and  SVC00202.EQPLINE = 1) > 0 begin  update SVC00202  set EQUIPID = @equipid,  ITEMNMBR = @item  where     SVC00202.SRVRECTYPE = 2 and  SVC00202.CALLNBR = @callnbr and  SVC00202.EQPLINE = 1 end else begin  insert SVC00202  VALUES  (2,@callnbr,1,@equipid,@item,0,0,0,CONVERT(varchar(10),GETDATE(),101) + ' 00:00:00',0) end if (select count(*) from SVC00201 where SVC00201.SRVRECTYPE = 2 and  SVC00201.CALLNBR = @callnbr and  SVC00201.LNITMSEQ = 1) > 0  begin  update SVC00201  set EQUIPID = @equipid,     ITEMNMBR = @item,  PROBCDE = @problem  where  SVC00201.SRVRECTYPE = 2 and  SVC00201.CALLNBR = @callnbr and  SVC00201.LNITMSEQ = 1 end else begin  insert SVC00201  VALUES  (2,@callnbr,1,@equipid,@item,'',@problem,'','',0,0,0) end commit transaction  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Edit_Call] TO [DYNGRP]
GO
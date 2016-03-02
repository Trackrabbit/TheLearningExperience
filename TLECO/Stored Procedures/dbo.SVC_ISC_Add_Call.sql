SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_ISC_Add_Call]  (       @custnmbr varchar(15) = NULL,   @adrscode varchar(15) = NULL,  @address1 varchar(31) = NULL,  @address2 varchar(31) = NULL,  @city varchar(31) = NULL,  @statecd varchar(30) = NULL,  @zip varchar(11) = NULL,  @svcdescr varchar(61) = NULL,  @cntcprsn varchar(31) = NULL,  @phone1 varchar(21) = NULL,  @pordnmbr varchar(21) = 'Needs PO',  @equipid integer = NULL,  @item varchar(31) = NULL,   @problem varchar(11) = NULL,   @rqstdate varchar(30) = NULL,  @rqsttime varchar(30) = NULL,  @txtfield text = NULL,  @CONTNBR  varchar(10) = NULL,  @callnbr char(11) OUTPUT,  @Serial char(15) = NULL,   @address3 varchar(31) = NULL,  @LineSeqNumber varchar(9) = NULL  )  as declare @newcallnbr char(11) declare @tempadrscode varchar(15) declare @custname varchar(65) declare @retadrs varchar(15) declare @tempaddress1 varchar(31) declare @tempaddress2 varchar(31) declare @tempaddress3 varchar(31) declare @tempcity varchar(31) declare @tempstatecd varchar(30) declare @tempzip varchar(11) declare @tempcountry varchar(21) declare @tempphone1 varchar(21) declare @taxschid varchar(15) declare @prclevel varchar(15) declare @taxexmt1 varchar(25) declare @taxexmt2 varchar(25) declare @pymtrmid varchar(21) declare @DEX_ROW_ID int declare @slspersonid varchar(15) declare @svcarea varchar(10) declare @techid varchar(10) declare @timezone varchar(3) declare @offid varchar(10) declare @prioritylevel int declare @total numeric(19,2) declare @default_office char(11) declare @default_timezone char(3) declare @ETADATE datetime declare @ETATIME datetime declare @invoicedamt numeric(19,2) declare @noteindx int  declare @contractline numeric(19,5) declare @consts smallint declare @default_status varchar(3) declare @default_type varchar(10) declare @srvtype char(11) declare @entdte datetime declare @enttme datetime declare @tempcntcprsn varchar(31) declare @return_status integer declare @thisdate varchar(18) declare @thistime varchar(18) declare @CurrencyID char(15) ,  @BillToCustomer varchar(15) ,  @BillToAddress varchar(15) ,  @OnHold tinyint,  @PrintToWeb tinyint declare @country varchar(21) declare @PostDate datetime,  @converteddte datetime,  @convertedtme datetime  declare @PARTPCT numeric(19,5), @LABPCT numeric(19,5), @MISCPCT numeric(19,5)  begin transaction  exec smGetMinDate @PostDate output   exec SVC_util_split_datetime @PostDate,@converteddte output,@convertedtme output  if @custnmbr is NULL goto badentry exec SVC_New_Call_Number @newcallnbr OUTPUT select  @default_status = SRVSTAT,  @default_type = SVC_Service_Type,  @default_timezone = TIMEZONE,  @default_office = OFFID,  @PrintToWeb = Print_to_Web  from SVC00998 if @default_type = '' select @default_type = SRVTYPE from SVC00998 if @@error <> 0  goto badentry select @techid = TECHID from SVC00300 where EQUIPID = @equipid if @techid  = '' or @techid = null  select @techid = TECHID from SVC00950 where CUSTNMBR = @custnmbr and ADRSCODE=@adrscode select  @prioritylevel = 99,  @techid = isnull(@techid,''),  @total = 0,  @invoicedamt = 0,  @noteindx = 0,   @consts = 0,  @contractline = 0 if exists(select * from  SVC00601 where CONTNBR = @CONTNBR and ITEMNMBR = @item)  select @PARTPCT = PARTPCT ,@LABPCT = LABPCT,@MISCPCT = MISCPCT, @contractline = LNSEQNBR  from SVC00601 where CONTNBR = @CONTNBR and ITEMNMBR = @item   select @srvtype = @default_type select @entdte = CONVERT(char(10),GETDATE(),101) + @convertedtme select @enttme = @converteddte + CONVERT(char(5),GETDATE(),108) if @rqstdate is null or @rqstdate = '' or CONVERT(char(30),@rqstdate,101) = @converteddte   select @rqstdate =  @entdte if @rqsttime is null or @rqsttime =  '' or CONVERT(char(30),@rqsttime,108) = @convertedtme  select @rqsttime =  @enttme select @ETADATE = @rqstdate,@ETATIME = @rqsttime  if not exists(select * from RM00101 where CUSTNMBR = @custnmbr)  begin  exec zDP_RM00101SI   @custnmbr,  '',   '' ,   '' ,  '' ,  '' ,  '' ,  @adrscode,  '' ,  '' ,  '' ,  @address1,  @address2,  @country,  @city,  @statecd,  @zip,  @phone1,  '' ,  '' ,  @adrscode ,  @adrscode ,  @adrscode ,  '' ,  '' , '' ,  0 ,  0 ,  0 ,  0 ,  '' ,   '' ,  0 ,   '' ,  0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   '' ,   '' ,   '' ,   '' ,   '' ,   '' ,   '' ,   0 ,   5 ,   '' ,  '' ,   '' ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   0 ,   '01/01/1900 00:00' ,   0 ,   0 ,   '' ,   '' ,   '01/01/1900 00:00' ,   1 ,   1 ,   1 ,   1 ,   0 ,   @entdte ,   @entdte ,     @DEX_ROW_ID OUT  end exec SVC_Get_Customer_Info @custnmbr, @adrscode OUTPUT,   @custname output, @retadrs output, @tempcntcprsn output,  @tempphone1 output, @tempaddress1 output, @tempaddress2 output,@tempaddress3 output,  @tempcity output, @tempstatecd output, @tempzip output, @tempcountry output,  @taxschid output, @prclevel output,   @taxexmt1 output, @taxexmt2 output, @pymtrmid output,  @slspersonid output,  @svcarea output, @offid output, @timezone output,   @CurrencyID OUTPUT,@BillToCustomer OUTPUT,@BillToAddress OUTPUT ,  @OnHold OUTPUT exec SVC_GetServicePriceLevel @custnmbr, @prclevel output  set  @country = @tempcountry if @custname is NULL goto badentry if (@cntcprsn is NULL) or (@cntcprsn = '') select @cntcprsn = @tempcntcprsn if @adrscode is NULL goto badentry  if @offid is NULL select @offid = @default_office if @timezone is NULL select @timezone = @default_timezone if @svcarea is NULL select @svcarea = '' if (@address1 is NULL) or (@address1 = '') begin  select   @address1 = @tempaddress1,  @address2 = @tempaddress2,  @address3 = @tempaddress3,  @city = @tempcity,  @statecd = @tempstatecd,  @country = @tempcountry,  @zip = @tempzip end if (@svcdescr is NULL) or (rtrim(@svcdescr) = '') select @svcdescr = '' if (@phone1 is NULL) or (@phone1 = '') select @phone1 = @tempphone1 if @pordnmbr = '' or @pordnmbr is null   select @pordnmbr = 'Needs PO' exec SVC_UpdateTextObject @noteindx OUTPUT,@rqstdate,@rqsttime,@txtfield  insert SVC00200  values  (  @newcallnbr,  2,  @default_status,  @srvtype,  @svcdescr,  @prioritylevel,  @custnmbr, '',  @adrscode,  @custname,  @address1,  @address2,  @city, @statecd,  @zip,  @cntcprsn,  @phone1,  @offid,  @svcarea,  @techid,  @timezone, @entdte,  @enttme,  @PostDate,  @PostDate,  @ETADATE,  @ETATIME,  @PostDate ,  @PostDate ,  @PostDate ,  @PostDate , @PostDate ,  @PostDate , @rqstdate,  @rqsttime, @prclevel,  @pymtrmid,  @slspersonid, 0, isnull(@LABPCT,100), 0,  0, isnull(@PARTPCT,100), 0, 0, isnull(@MISCPCT,100), 0, @taxschid,  @taxexmt1, @taxexmt2, 0, 0, @total,  @invoicedamt, 0, 0, 0, @pordnmbr,  @noteindx, 0, '', '', '', '', '', 0, ' ', @PostDate , @PostDate , 1, @pymtrmid, 0, '', '', '', '', '', @consts, @CONTNBR, @contractline, 0, @OnHold, @PrintToWeb, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @BillToCustomer, '', @BillToAddress, 0, '', '', 0, @PostDate , 0, @PostDate , 0, 0, 0, @PostDate , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, isnull(@address3,''), isnull(@country,''), 0,'',0,0,0,0,0, 9,2  )  insert SVC00210  values  (@newcallnbr,2,1,@default_status,@default_status,@techid,'New Call From eService Calls.','SYSTEM',CONVERT(varchar(10),GETDATE(),101) + @convertedtme,@converteddte + CONVERT(varchar(10),GETDATE(),108)) if @@error <> 0 goto badentry   if (@equipid is NULL) select @equipid = 0 if (@item = 'NONE') or (@item is NULL) select @item = '' if (@problem = 'NONE') or (@problem is NULL) select @problem = ''  if @equipid <> 0 BEGIN  select   @item = SVC00300.ITEMNMBR  from  SVC00300  where  SVC00300.EQUIPID = @equipid  END insert SVC00202  VALUES  (2,@newcallnbr,1,@equipid,@item,0,0,0,CONVERT(varchar(10),GETDATE(),101) + ' 00:00:00',0) insert SVC00201  VALUES  (2,@newcallnbr,1,@equipid,@item,'',@problem,'','',0,0,0)  exec SVC_Obj_CreateServiceLineAddons @newcallnbr    commit transaction  select @callnbr = @newcallnbr  return badentry:  rollback transaction  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Add_Call] TO [DYNGRP]
GO

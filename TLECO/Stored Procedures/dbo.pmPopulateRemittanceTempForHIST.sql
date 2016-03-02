SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[pmPopulateRemittanceTempForHIST]  @I_cBatchSource char(15) = NULL,  @I_cBatchNumber char(15) = NULL,  @I_cPaymentNumber char(20) = NULL,  @I_nType smallint = NULL,  @I_cUserID char(15) = NULL,  @I_fPrint tinyint  = NULL,  @I_fSend tinyint  = NULL,  @I_fValidateOnly tinyint  = NULL,  @O_lSequence int   = NULL output,  @O_iErrorState int   = NULL output as  declare  @cBatchNumber char(32),  @cBatchSource char(32),  @cPaymentNumber char(42),  @cUserID char(32),  @O_cSequence varchar(max),  @cWhere varchar(max),  @cSql varchar(max),  @iError int,  @iStatus int,  @TRUE int,  @FALSE int   select  @O_iErrorState   = 0,  @iStatus         = 0   if @I_cBatchSource is NULL or  @I_cBatchNumber is NULL or  @I_cPaymentNumber is NULL or  @I_nType is NULL or  @I_cUserID is NULL or  @I_fPrint is NULL or  @I_fSend is NULL or  @I_fValidateOnly is NULL or  @O_lSequence is NULL  begin  select @O_iErrorState = 21110  return  end    exec @iStatus = DYNAMICS..smGetConstantInt 'TRUE', @TRUE output, @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec @iStatus = DYNAMICS..smGetConstantInt 'FALSE', @FALSE output, @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cBatchNumber,  @cBatchNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cBatchSource,  @cBatchSource output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cPaymentNumber,  @cPaymentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cUserID,  @cUserID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   select @O_lSequence = MAX(SEQNUMBR) from PM80950  select @O_lSequence = isnull(@O_lSequence,0) + 1  select @O_cSequence = str(@O_lSequence)   select @cWhere = case @I_nType  when 2 then   'where BACHNUMB = ' + @cBatchNumber + '   and BCHSOURC  = ' + @cBatchSource + '  and VOIDED = ' + str(@FALSE) + ' '  when 1 then   'where VCHRNMBR = ' + @cPaymentNumber + ' '  else   'where BACHNUMB = ' + @cBatchNumber + '   and BCHSOURC  = ' + @cBatchSource + '  and VCHRNMBR = ' + @cPaymentNumber + ' '  end  if @I_fPrint = @TRUE  begin  select @cSql =   'insert into PM80950  select  BACHNUMB,  BCHSOURC,  VCHRNMBR,  ' + @O_cSequence + ',  DOCDATE,  DOCNUMBR,  PM30200.VENDORID,  PM00200.VENDNAME,  PM30200.VNDCHKNM,  PM30200.CURNCYID,  VOIDED,  DOCTYPE,  0,  ' + @cUserID + ',  1 ,  0,  0,  DOCAMNT,  0,  Electronic  from  PM30200 inner join PM00200 on PM30200.VENDORID = PM00200.VENDORID '   + @cWhere   exec (@cSql)  end   if (@I_fSend = @TRUE or @I_fValidateOnly = @TRUE)  begin  select @cSql =   'insert into PM80950  select  BACHNUMB,  BCHSOURC,  VCHRNMBR,  ' + @O_cSequence + ',  DOCDATE,  DOCNUMBR,  P.VENDORID,  PM00200.VENDNAME,  P.VNDCHKNM,  P.CURNCYID,  VOIDED,  DOCTYPE,  0,  ' + @cUserID + ',  1,  0,  20,  DOCAMNT,  0,  Electronic  from  PM30200 P inner join PM00200 on P.VENDORID = PM00200.VENDORID, SY04905 S, SY04904 O   ' + @cWhere + ' and  P.VENDORID = S.EmailCardID and  P.VENDORID = O.EmailCardID and  S.EmailDictionaryID = 0 and  O.EmailDictionaryID = 0 and  S.EmailSeriesID = 4  and   O.EmailSeriesID = 4  and   S.MODULE1 = 19  and  S.EmailDocumentID = 6  and   S.EmailDocumentID=P.DOCTYPE and   S.EmailDocumentEnabled = 1  and  O.EmailAllowEmbedding = 1 '   exec (@cSql)   select @cSql =   'insert into PM80950  select  BACHNUMB,  BCHSOURC,  VCHRNMBR,  ' + @O_cSequence + ',  DOCDATE,  DOCNUMBR,  P.VENDORID,  PM00200.VENDNAME,  P.VNDCHKNM,  P.CURNCYID,  VOIDED,  DOCTYPE,  0,  ' + @cUserID + ',  1,  0,  12,  DOCAMNT,  0,  Electronic  from  PM30200 P inner join PM00200 on P.VENDORID = PM00200.VENDORID, SY04905 S, SY04904 O   ' + @cWhere + ' and  P.VENDORID = S.EmailCardID and  P.VENDORID = O.EmailCardID and  S.EmailDictionaryID = 0 and  O.EmailDictionaryID = 0 and  S.EmailSeriesID = 4  and   O.EmailSeriesID = 4  and   S.MODULE1 = 19  and  S.EmailDocumentID = 6  and   S.EmailDocumentID=P.DOCTYPE and   S.EmailDocumentEnabled = 1  and  S.EmailDocumentFormat = 2  and  not O.EmailAllowEmbedding = 1 '   exec (@cSql)   select @cSql =   'insert into PM80950  select  BACHNUMB,  BCHSOURC,  VCHRNMBR,  ' + @O_cSequence + ',  DOCDATE,  DOCNUMBR,  P.VENDORID,  PM00200.VENDNAME,  P.VNDCHKNM,  P.CURNCYID,  VOIDED,  DOCTYPE,  0,  ' + @cUserID + ',  1,  0,  16,  DOCAMNT,  0,  Electronic  from  PM30200 P inner join PM00200 on P.VENDORID = PM00200.VENDORID, SY04905 S, SY04904 O   ' + @cWhere + ' and  P.VENDORID = S.EmailCardID and  P.VENDORID = O.EmailCardID and  S.EmailDictionaryID = 0 and  O.EmailDictionaryID = 0 and  S.EmailSeriesID = 4  and   O.EmailSeriesID = 4  and   S.MODULE1 = 19  and  S.EmailDocumentID = 6  and   S.EmailDocumentID=P.DOCTYPE and   S.EmailDocumentEnabled = 1  and  (S.EmailDocumentFormat = 1  or  S.EmailDocumentFormat = 3  or  S.EmailDocumentFormat = 4 ) and  not O.EmailAllowEmbedding = 1 '  exec (@cSql)   select @cSql =   'insert into PM80950  select  BACHNUMB,  BCHSOURC,  VCHRNMBR,  ' + @O_cSequence + ',  DOCDATE,  DOCNUMBR,  PM30200.VENDORID,  PM00200.VENDNAME,  PM30200.VNDCHKNM,  PM30200.CURNCYID,  VOIDED,  DOCTYPE,  0,  ' + @cUserID + ',  1,  0,  999,  DOCAMNT,  0,  Electronic  from  PM30200 inner join PM00200 on PM30200.VENDORID = PM00200.VENDORID  ' + @cWhere + ' and  VCHRNMBR not in(select PMNTNMBR from PM80950) '   exec (@cSql)  end  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmPopulateRemittanceTempForHIST] TO [DYNGRP]
GO

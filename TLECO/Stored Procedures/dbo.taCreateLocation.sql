SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocation] @I_vLOCATNID char(15),    @I_vLOCATNNM char(30),    @I_vADRCNTCT char(60) = '',   @I_vADDRESS1 char(60) = '',   @I_vADDRESS2 char(60) = '',   @I_vADDRESS3 char(60) = '',   @I_vCITY  char(35) = '',   @I_vCOUNTY char(60) = '',   @I_vSTATE char(29) = '',   @I_vZIPCODE char(10) = '',   @I_vCOUNTRY char(60) = '',   @I_vPHONE1 char(20) = '',   @I_vPHONE2 char(20) = '',   @I_vPHONE3 char(20) = '',   @I_vFAXNUMBR char(20) = '',   @I_vCCode char(6)='',    @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',       @I_vUSRDEFND2 char(50) = '',       @I_vUSRDEFND3 char(50) = '',       @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @sCompanyID int,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @iAddCodeErrState int,  @O_oErrorState int,  @iError int      select  @O_iErrorState = 0,     @sCompanyID = CMPANYID from DYNAMICS..SY01500 where INTERID = db_name()  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateLocationPre  @I_vLOCATNID output,  @I_vLOCATNNM output,  @I_vADRCNTCT output,  @I_vADDRESS1 output,  @I_vADDRESS2 output,  @I_vADDRESS3 output,  @I_vCITY  output,  @I_vCOUNTY output,  @I_vSTATE output,  @I_vZIPCODE output,  @I_vCOUNTRY output,  @I_vPHONE1 output,  @I_vPHONE2 output,  @I_vPHONE3 output,  @I_vFAXNUMBR output,  @I_vCCode output,      @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 801    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vLOCATNID is NULL or  @I_vLOCATNNM is NULL or  @I_vADRCNTCT is NULL or  @I_vADDRESS1 is NULL or  @I_vADDRESS2 is NULL or  @I_vADDRESS3 is NULL or  @I_vCITY is NULL or  @I_vCOUNTY is NULL or  @I_vSTATE is NULL or  @I_vZIPCODE is NULL or  @I_vCOUNTRY is NULL or  @I_vPHONE1 is NULL or  @I_vPHONE2 is NULL or  @I_vPHONE3 is NULL or  @I_vFAXNUMBR is NULL or  @I_vCCode is NULL or       @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL  ) begin  select @O_iErrorState = 802    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @I_vLOCATNID =UPPER(@I_vLOCATNID),  @I_vCCode = UPPER(@I_vCCode)    if ( @I_vLOCATNID = '' ) begin  select @O_iErrorState = 803    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if ( @I_vLOCATNNM = '' ) begin  select @O_iErrorState = 804    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if ( @I_vCCode <> '' ) begin  if not exists(select 1 from VAT10001 (nolock) where CCode = @I_vCCode)  begin   select @O_iErrorState = 5321     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1)  begin  select @O_iErrorState = 3668     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1)  begin  select @O_iErrorState = 3669     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState = 4515   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  begin  if not exists( select 1 from SY00600 (nolock) where CMPANYID = @sCompanyID and LOCATNID = @I_vLOCATNID )  begin  insert SY00600 (  CMPANYID,  LOCATNID,  LOCATNNM,  ADRSCODE,  ADRCNTCT,  ADDRESS1,  ADDRESS2,  ADDRESS3,  CITY,  COUNTY,  STATE,  ZIPCODE,  COUNTRY,  PHONE1,  PHONE2,  PHONE3,  FAXNUMBR,  CHANGEBY_I,  CHANGEDATE_I,  NOTEINDX,  CCode      )  select  @sCompanyID,     @I_vLOCATNID,     @I_vLOCATNNM,     '',      @I_vADRCNTCT,     @I_vADDRESS1,     @I_vADDRESS2,     @I_vADDRESS3,     @I_vCITY,     @I_vCOUNTY,     @I_vSTATE,     @I_vZIPCODE,     @I_vCOUNTRY,     @I_vPHONE1,     @I_vPHONE2,     @I_vPHONE3,     @I_vFAXNUMBR,     '',      '',      @nNextNoteIndex,    @I_vCCode      if @@error <> 0  begin  select @O_iErrorState = 805    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  else  if ( @I_vUpdateIfExists = 1 )  begin  update SY00600   set LOCATNNM =  case  WHEN @I_vLOCATNNM = ''  THEN LOCATNNM  ELSE @I_vLOCATNNM  end,  ADRCNTCT =  case  WHEN @I_vADRCNTCT = ''  THEN ADRCNTCT  ELSE @I_vADRCNTCT  end,  ADDRESS1 =  case  WHEN @I_vADDRESS1 = ''  THEN ADDRESS1  ELSE @I_vADDRESS1  end,  ADDRESS2 =  case  WHEN @I_vADDRESS2 = ''  THEN ADDRESS2  ELSE @I_vADDRESS2  end,  ADDRESS3 =  case  WHEN @I_vADDRESS3 = ''  THEN ADDRESS3  ELSE @I_vADDRESS3  end,  CITY =  case  WHEN @I_vCITY = ''  THEN CITY  ELSE @I_vCITY  end,  COUNTY =  case  WHEN @I_vCOUNTY = ''  THEN COUNTY  ELSE @I_vCOUNTY  end,  STATE =  case  WHEN @I_vSTATE = ''  THEN STATE  ELSE @I_vSTATE  end,  ZIPCODE =  case  WHEN @I_vZIPCODE = ''  THEN ZIPCODE  ELSE @I_vZIPCODE  end,  COUNTRY =  case  WHEN @I_vCOUNTRY = ''  THEN COUNTRY  ELSE @I_vCOUNTRY  end,  PHONE1 =  case  WHEN @I_vPHONE1 = ''  THEN PHONE1  ELSE @I_vPHONE1  end,  PHONE2 =  case  WHEN @I_vPHONE2 = ''  THEN PHONE2  ELSE @I_vPHONE2  end,  PHONE3 =  case  WHEN @I_vPHONE3 = ''  THEN PHONE3  ELSE @I_vPHONE3  end,  FAXNUMBR =  case  WHEN @I_vFAXNUMBR = ''  THEN FAXNUMBR  ELSE @I_vFAXNUMBR  end,  CCode =   case   WHEN @I_vCCode = ''  THEN CCode  ELSE @I_vCCode  end  where  CMPANYID = @sCompanyID and   LOCATNID = @I_vLOCATNID  if @@error <> 0  begin  select @O_iErrorState = 806    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  exec @iStatus = taCreateLocationPost  @I_vLOCATNID,  @I_vLOCATNNM,  @I_vADRCNTCT,  @I_vADDRESS1,  @I_vADDRESS2,  @I_vADDRESS3,  @I_vCITY,  @I_vCOUNTY,  @I_vSTATE,  @I_vZIPCODE,  @I_vCOUNTRY,  @I_vPHONE1,  @I_vPHONE2,  @I_vPHONE3,  @I_vFAXNUMBR,  @I_vCCode,     @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 807    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocation] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransferHeaderInsert] @I_vBACHNUMB char(15) ,    @I_vIVDOCNBR char(17) ,   @I_vDOCDATE datetime ,   @I_vPOSTTOGL tinyint = 0,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',       @I_vUSRDEFND2  char(50) = '',       @I_vUSRDEFND3  char(50) = '',       @I_vUSRDEFND4  char(8000) = '',  @I_vUSRDEFND5  char(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @IVDOCTYP smallint,     @BCHSOURC char(15),  @iStatus int,  @iAddCodeErrState int,  @iStatement int,  @O_oErrorState int,  @sCompanyID smallint,     @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @TRXTOTAL numeric(19,5),    @iUpdtBthErrState int,  @iCustomState int,  @iCustomErrString varchar(255),  @iCreateBatchErrString varchar(255),   @iError int,      @DBName char(50),     @O_iInitErrorState int,     @oInitErrString varchar(255),    @O_iErrorStateAASub int,  @O_iErrorStringAASub varchar(255),  @itaProcessAnalyticsErrState int,  @itaProcessAnalyticsErrString varchar(8000),  @aaSubLedgerHdrID int,  @CURNCYID char(15),  @CURRNIDX int,  @INTERID char(5)  select  @IVDOCTYP = 3,       @BCHSOURC = 'IV_Trans',  @iStatus = 0,  @iAddCodeErrState = 0,  @O_oErrorState = 0,  @iStatement = 0,  @TRXTOTAL = 0,  @iUpdtBthErrState = 0,  @O_iErrorState = 0,     @O_iErrorStateAASub = 0,  @O_iErrorStringAASub = '',  @itaProcessAnalyticsErrState = 0,  @itaProcessAnalyticsErrString = '',  @aaSubLedgerHdrID = 0,  @CURNCYID = '',  @CURRNIDX = 0,  @INTERID = ''  if (@oErrString is NULL) begin  select @oErrString = '' end  select @DBName = DB_Name()  exec @iStatus = taIVTransferHeaderInsertPre  @I_vBACHNUMB output,  @I_vIVDOCNBR  output,  @I_vDOCDATE output,  @I_vPOSTTOGL  output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1352    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vBACHNUMB is null or  @I_vIVDOCNBR is null or  @I_vDOCDATE is null or  @I_vPOSTTOGL is null or   @I_vRequesterTrx is null  ) begin  select @O_iErrorState = 1353    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select  @I_vBACHNUMB = UPPER(@I_vBACHNUMB),  @I_vIVDOCNBR = UPPER(@I_vIVDOCNBR)   if not exists(select 1 from MC40000 (nolock)) begin  select @O_iErrorState = 7047    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vBACHNUMB = '') begin  select @O_iErrorState = 1354    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (exists(select 1 from SY00500 (nolock) where BACHNUMB = @I_vBACHNUMB and MKDTOPST <> 0 and BCHSOURC = @BCHSOURC)) begin  select @O_iErrorState = 1356    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vIVDOCNBR = '') begin  select @O_iErrorState = 1357    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if exists(select 1 from IV10000 (nolock) where IVDOCTYP = @IVDOCTYP and IVDOCNBR = @I_vIVDOCNBR) or  exists(select 1 from IV30200 (nolock) where IVDOCTYP = @IVDOCTYP and DOCNUMBR = @I_vIVDOCNBR)  begin  select @O_iErrorState = 1358    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @INTERID = INTERID, @sCompanyID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 1359   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @TRXTOTAL = isnull(sum(TRXQTY),0) from IV10001 (nolock) where IVDOCTYP = @IVDOCTYP and IVDOCNBR = @I_vIVDOCNBR and TRXQTY > 0  if (@TRXTOTAL < 0) begin  select @O_iErrorState = 1355    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 ) begin  select @O_iErrorState = 3703     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='IV_Transaction',  @I_vINDEX1=@I_vIVDOCNBR,  @I_vINDEX2=@IVDOCTYP,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if (@iStatus <> 0) or (@iCustomState <> 0)  begin  select @O_iErrorState = 2925   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taCreateUpdateBatchHeaderRcd  @I_vBACHNUMB = @I_vBACHNUMB,  @I_vSERIES = 5,  @I_vGLPOSTDT = @I_vDOCDATE,  @I_vBCHSOURC = @BCHSOURC,  @I_vDOCAMT = @TRXTOTAL,  @I_vORIGIN = 2,  @I_vNUMOFTRX = 1,  @I_vCHEKBKID = '',  @I_vPOSTTOGL = @I_vPOSTTOGL,  @O_iErrorState = @iUpdtBthErrState output,  @oErrString = @iCreateBatchErrString output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@iUpdtBthErrState <> 0) begin  if (@iUpdtBthErrState <> 0)  begin  exec @iStatus = taUpdateString  @iUpdtBthErrState,   @oErrString,  @oErrString output,  @O_oErrorState output  end   select @O_iErrorState = 1360   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  insert into IV10000 ( BACHNUMB,  BCHSOURC,  IVDOCNBR,  RCDOCNUM,  IVDOCTYP,  DOCDATE,  MODIFDT,  MDFUSRID,  PTDUSRID,  GLPOSTDT,  PSTGSTUS,  TRXQTYTL,  NOTEINDX,  SRCRFRNCNMBR,  SOURCEINDICATOR  )  select  @I_vBACHNUMB,      @BCHSOURC,      @I_vIVDOCNBR,      @I_vIVDOCNBR,      @IVDOCTYP,      @I_vDOCDATE,      convert(varchar(12),getdate()),    '',       '',       @I_vDOCDATE ,       0,       @TRXTOTAL,      @nNextNoteIndex,     '',       1      if @@error <> 0 begin  select @O_iErrorState = 1361    select @iStatement = 1  exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if exists(select 1 from DYNAMICS..sysobjects (nolock) where name  = 'AAG00102') begin  if exists(select 1 from DYNAMICS..AAG00102 (nolock) where CMPANYID = @sCompanyID)  begin   exec @iStatus = aagCreateSubWorkDist  @aaSubLedgerHdrID out,  0,   3,   @I_vIVDOCNBR,  '',   10001,  5,   @sCompanyID,   0,  @CURNCYID,   @CURRNIDX,   '',   '',   0,   '',   '',  '',   0,  0,   0,   1,   @INTERID,   0,   0,  '',  @O_iErrorStateAASub output,  @O_iErrorStringAASub output   if (@@error <> 0)   begin  select @O_iErrorState = 9443    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return(@O_iErrorState)  end  if @aaSubLedgerHdrID <> 0  begin  exec @iStatus = taProcessAnalytics  @I_vDOCNMBR = @I_vIVDOCNBR,  @I_vKey = @I_vIVDOCNBR,  @I_vDOCTYPE = 0,  @O_iErrorState = @itaProcessAnalyticsErrState output,  @oErrString = @itaProcessAnalyticsErrString output  select @iError = @@error  if ((@iStatus <> 0) or (@itaProcessAnalyticsErrState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @itaProcessAnalyticsErrString  select @O_iErrorState = 9444    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return(@O_iErrorState)  end  end  end end  exec @iStatus = taIVTransferHeaderInsertPost  @I_vBACHNUMB,  @I_vIVDOCNBR,  @I_vDOCDATE,  @I_vPOSTTOGL,   @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1362    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='IV_Transaction',  @I_vINDEX1=@I_vIVDOCNBR,  @I_vINDEX2=@IVDOCTYP,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if (@iStatus <> 0) or (@iCustomState <> 0)  begin  select @O_iErrorState = 2926   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransferHeaderInsert] TO [DYNGRP]
GO
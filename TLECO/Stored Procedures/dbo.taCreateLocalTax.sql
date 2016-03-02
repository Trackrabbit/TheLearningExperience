SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocalTax] @I_vLOCALTAX char(6),    @I_vDSCRIPTN char(30),    @I_vLCLTXCAL_1 smallint = 0,    @I_vLCLTXCAL_2 smallint = 0,    @I_vLCLTXCAL_3 smallint = 0,    @I_vLCLTXCAL_4 smallint = 0,    @I_vLCLTXCAL_5 smallint = 0,    @I_vEXMTAMNT numeric(19,5) = 0,   @I_vMNTXBLWG numeric(19,5) = 0,   @I_vMYTDTXWG numeric(19,5) = 0,   @I_vLCLTAXRT numeric(19,5) = 0,   @I_vLCLTXAMT numeric(19,5) = 0,   @I_vMAXPERYR numeric(19,5) = 0,   @I_vINACTIVE tinyint = 0,   @I_vSTDDMTHD smallint = 0,   @I_vSTDDPCNT numeric(19,5) = 0,   @I_vSTDDEDAM numeric(19,5) = 0,   @I_vSTDEDMAX numeric(19,5) = 0,   @I_vSTDEDMIN numeric(19,5) = 0,   @I_vTAXTYPE smallint = 4,   @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',       @I_vUSRDEFND2 char(50) = '',       @I_vUSRDEFND3 char(50) = '',       @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @sCompanyID int,  @iCustomState int,  @iStatus int,  @O_oErrorState int,  @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @iError int,      @DBName char(50),     @iAddCodeErrState int  select  @O_iErrorState = 0,     @O_oErrorState = 0,  @sCompanyID = CMPANYID from DYNAMICS..SY01500 where INTERID = db_name()  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateLocalTaxPre  @I_vLOCALTAX output,  @I_vDSCRIPTN output,  @I_vLCLTXCAL_1 output,  @I_vLCLTXCAL_2 output,  @I_vLCLTXCAL_3 output,  @I_vLCLTXCAL_4 output,  @I_vLCLTXCAL_5 output,  @I_vEXMTAMNT output,  @I_vMNTXBLWG output,  @I_vMYTDTXWG output,  @I_vLCLTAXRT output,  @I_vLCLTXAMT output,  @I_vMAXPERYR output,  @I_vINACTIVE output,  @I_vSTDDMTHD output,  @I_vSTDDPCNT output,  @I_vSTDDEDAM output,  @I_vSTDEDMAX output,  @I_vSTDEDMIN output,  @I_vTAXTYPE output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @oErrString  output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 1143    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vLOCALTAX is NULL or  @I_vDSCRIPTN is NULL or  @I_vLCLTXCAL_1 is NULL or  @I_vLCLTXCAL_2 is NULL or  @I_vLCLTXCAL_3 is NULL or  @I_vLCLTXCAL_4 is NULL or  @I_vLCLTXCAL_5 is NULL or  @I_vEXMTAMNT is NULL or  @I_vMNTXBLWG is NULL or  @I_vMYTDTXWG is NULL or  @I_vLCLTAXRT is NULL or  @I_vLCLTXAMT is NULL or  @I_vMAXPERYR is NULL or  @I_vINACTIVE is NULL or  @I_vSTDDMTHD is NULL or  @I_vSTDDPCNT is NULL or  @I_vSTDDEDAM is NULL or  @I_vSTDEDMAX is NULL or  @I_vSTDEDMIN is NULL or  @I_vTAXTYPE is NULL or  @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL  ) begin     select @O_iErrorState = 1144    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @I_vLOCALTAX = UPPER(@I_vLOCALTAX)  if ( @I_vLOCALTAX = '' ) begin  select @O_iErrorState = 1121    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDSCRIPTN = '' ) begin  select @O_iErrorState = 1122    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_1 < 0 or @I_vLCLTXCAL_1 > 9 ) begin  select @O_iErrorState = 1123     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_2 < 0 or @I_vLCLTXCAL_2 > 9 ) begin  select @O_iErrorState = 1124     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_3 < 0 or @I_vLCLTXCAL_3 > 9 ) begin  select @O_iErrorState = 1125     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_4 < 0 or @I_vLCLTXCAL_4 > 9 ) begin  select @O_iErrorState = 1126     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_5 < 0 or @I_vLCLTXCAL_5 > 9 ) begin  select @O_iErrorState = 1127     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vEXMTAMNT < 0 )  begin  select @O_iErrorState = 1128     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vMNTXBLWG < 0 )  begin  select @O_iErrorState = 1129     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTAXRT < 0 )  begin  select @O_iErrorState = 1130     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXAMT < 0 )  begin  select @O_iErrorState = 1131     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vMAXPERYR < 0 )  begin  select @O_iErrorState = 1132      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vINACTIVE < 0 or @I_vINACTIVE > 1 ) begin  select @O_iErrorState = 1133     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSTDDMTHD < 0 or @I_vSTDDMTHD > 1 ) begin  select @O_iErrorState = 1134     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSTDEDMAX <> 0 ) and ( @I_vSTDEDMAX < @I_vSTDEDMIN ) begin  select @O_iErrorState = 1158     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vTAXTYPE < 1 or @I_vTAXTYPE > 4 ) begin  select @O_iErrorState = 1135     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1)  begin  select @O_iErrorState = 1136     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1)  begin  select @O_iErrorState = 3667     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_1 = 3 or @I_vLCLTXCAL_2 = 3 or @I_vLCLTXCAL_3 = 3 or @I_vLCLTXCAL_4 = 3 or @I_vLCLTXCAL_5 = 3 )   and ( @I_vLCLTXCAL_1 = 5 or @I_vLCLTXCAL_2 = 5 or @I_vLCLTXCAL_3 = 5 or @I_vLCLTXCAL_4 = 5 or @I_vLCLTXCAL_5 = 5 ) begin  select @O_iErrorState = 1137     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLCLTXCAL_1 = 7 or @I_vLCLTXCAL_2 = 7 or @I_vLCLTXCAL_3 = 7 or @I_vLCLTXCAL_4 = 7 or @I_vLCLTXCAL_5 = 7 )   and ( @I_vLCLTXCAL_1 = 9 or @I_vLCLTXCAL_2 = 9 or @I_vLCLTXCAL_3 = 9 or @I_vLCLTXCAL_4 = 9 or @I_vLCLTXCAL_5 = 9 ) begin  select @O_iErrorState = 1138     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState = 1139   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if not exists(select 1 from UPR41400 where LOCALTAX = @I_vLOCALTAX ) begin  insert UPR41400 (  LOCALTAX,  DSCRIPTN,  LCLTXCAL_1,  LCLTXCAL_2,  LCLTXCAL_3,  LCLTXCAL_4,  LCLTXCAL_5,  EXMTAMNT,  MNTXBLWG,  MYTDTXWG,  LCLTAXRT,  LCLTXAMT,  MAXPERYR,  INACTIVE,  NOTEINDX,  STDDMTHD,  STDDPCNT,  STDDEDAM,  STDEDMAX,  STDEDMIN,  TAXTYPE  )  select  @I_vLOCALTAX,   @I_vDSCRIPTN,   @I_vLCLTXCAL_1,   @I_vLCLTXCAL_2,   @I_vLCLTXCAL_3,   @I_vLCLTXCAL_4,   @I_vLCLTXCAL_5,   case    WHEN @I_vLCLTXCAL_1 = 1 or @I_vLCLTXCAL_2 = 1 or @I_vLCLTXCAL_3 = 1 or @I_vLCLTXCAL_4 = 1 or @I_vLCLTXCAL_5 = 1  THEN @I_vEXMTAMNT  ELSE 0  end,  case    WHEN @I_vLCLTXCAL_1 = 2 or @I_vLCLTXCAL_2 = 2 or @I_vLCLTXCAL_3 = 2 or @I_vLCLTXCAL_4 = 2 or @I_vLCLTXCAL_5 = 2  THEN @I_vMNTXBLWG  ELSE 0  end,  case    WHEN @I_vLCLTXCAL_1 = 7 or @I_vLCLTXCAL_2 = 7 or @I_vLCLTXCAL_3 = 7 or @I_vLCLTXCAL_4 = 7 or @I_vLCLTXCAL_5 = 7  THEN @I_vMYTDTXWG  WHEN @I_vLCLTXCAL_1 = 9 or @I_vLCLTXCAL_2 = 9 or @I_vLCLTXCAL_3 = 9 or @I_vLCLTXCAL_4 = 9 or @I_vLCLTXCAL_5 = 9  THEN @I_vMYTDTXWG  ELSE 0  end,  case    WHEN @I_vLCLTXCAL_1 = 3 or @I_vLCLTXCAL_2 = 3 or @I_vLCLTXCAL_3 = 3 or @I_vLCLTXCAL_4 = 3 or @I_vLCLTXCAL_5 = 3  THEN @I_vLCLTAXRT * 100000  ELSE 0  end,  case    WHEN @I_vLCLTXCAL_1 = 5 or @I_vLCLTXCAL_2 = 5 or @I_vLCLTXCAL_3 = 5 or @I_vLCLTXCAL_4 = 5 or @I_vLCLTXCAL_5 = 5  THEN @I_vLCLTXAMT  ELSE 0  end,  case    WHEN @I_vLCLTXCAL_1 = 6 or @I_vLCLTXCAL_2 = 6 or @I_vLCLTXCAL_3 = 6 or @I_vLCLTXCAL_4 = 6 or @I_vLCLTXCAL_5 = 6  THEN @I_vMAXPERYR  ELSE 0  end,  @I_vINACTIVE,   @nNextNoteIndex,  case    WHEN @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8  THEN @I_vSTDDMTHD  ELSE 0  end,  case    WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDDPCNT * 100000  ELSE 0   end,  case    WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 1 )  THEN @I_vSTDDEDAM  ELSE 0  end,  case    WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDEDMAX  ELSE 0  end,  case    WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDEDMIN  ELSE 0  end,  @I_vTAXTYPE   if (@@error <> 0)  begin  select @O_iErrorState = 1140     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end else if ( @I_vUpdateIfExists = 1 ) begin  update UPR41400 set  DSCRIPTN =  case  WHEN @I_vDSCRIPTN <> ''  THEN @I_vDSCRIPTN  ELSE DSCRIPTN  end,  LCLTXCAL_1 = @I_vLCLTXCAL_1,  LCLTXCAL_2 = @I_vLCLTXCAL_2,  LCLTXCAL_3 = @I_vLCLTXCAL_3,  LCLTXCAL_4 = @I_vLCLTXCAL_4,  LCLTXCAL_5 = @I_vLCLTXCAL_5,  EXMTAMNT =  case  WHEN @I_vLCLTXCAL_1 = 1 or @I_vLCLTXCAL_2 = 1 or @I_vLCLTXCAL_3 = 1 or @I_vLCLTXCAL_4 = 1 or @I_vLCLTXCAL_5 = 1  THEN @I_vEXMTAMNT  ELSE 0  end,  MNTXBLWG =  case  WHEN @I_vLCLTXCAL_1 = 2 or @I_vLCLTXCAL_2 = 2 or @I_vLCLTXCAL_3 = 2 or @I_vLCLTXCAL_4 = 2 or @I_vLCLTXCAL_5 = 2  THEN @I_vMNTXBLWG  ELSE 0  end,  MYTDTXWG =  case  WHEN @I_vLCLTXCAL_1 = 7 or @I_vLCLTXCAL_2 = 7 or @I_vLCLTXCAL_3 = 7 or @I_vLCLTXCAL_4 = 7 or @I_vLCLTXCAL_5 = 7  THEN @I_vMYTDTXWG  WHEN @I_vLCLTXCAL_1 = 9 or @I_vLCLTXCAL_2 = 9 or @I_vLCLTXCAL_3 = 9 or @I_vLCLTXCAL_4 = 9 or @I_vLCLTXCAL_5 = 9  THEN @I_vMYTDTXWG  ELSE 0  end,  LCLTAXRT =  case  WHEN @I_vLCLTXCAL_1 = 3 or @I_vLCLTXCAL_2 = 3 or @I_vLCLTXCAL_3 = 3 or @I_vLCLTXCAL_4 = 3 or @I_vLCLTXCAL_5 = 3  THEN @I_vLCLTAXRT * 100000  ELSE 0  end,  LCLTXAMT =  case  WHEN @I_vLCLTXCAL_1 = 5 or @I_vLCLTXCAL_2 = 5 or @I_vLCLTXCAL_3 = 5 or @I_vLCLTXCAL_4 = 5 or @I_vLCLTXCAL_5 = 5  THEN @I_vLCLTXAMT  ELSE 0  end,  MAXPERYR =  case  WHEN @I_vLCLTXCAL_1 = 6 or @I_vLCLTXCAL_2 = 6 or @I_vLCLTXCAL_3 = 6 or @I_vLCLTXCAL_4 = 6 or @I_vLCLTXCAL_5 = 6  THEN @I_vMAXPERYR  ELSE 0  end,  INACTIVE = @I_vINACTIVE,  STDDMTHD =  case  WHEN @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8  THEN @I_vSTDDMTHD  ELSE 0  end,  STDDPCNT =  case  WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDDPCNT * 100000  ELSE 0  end,  STDDEDAM =  case  WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 1 )  THEN @I_vSTDDEDAM  ELSE 0  end,  STDEDMAX =  case  WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDEDMAX  ELSE 0   end,  STDEDMIN =  case  WHEN ( @I_vLCLTXCAL_1 = 8 or @I_vLCLTXCAL_2 = 8 or @I_vLCLTXCAL_3 = 8 or @I_vLCLTXCAL_4 = 8 or @I_vLCLTXCAL_5 = 8 ) and ( @I_vSTDDMTHD = 0 )  THEN @I_vSTDEDMIN  ELSE 0  end,  TAXTYPE = @I_vTAXTYPE   from UPR41400 (nolock) where LOCALTAX = @I_vLOCALTAX   if (@@error <> 0)  begin  select @O_iErrorState = 1141     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taCreateLocalTaxPost  @I_vLOCALTAX,  @I_vDSCRIPTN,  @I_vLCLTXCAL_1,  @I_vLCLTXCAL_2,  @I_vLCLTXCAL_3,  @I_vLCLTXCAL_4,  @I_vLCLTXCAL_5,  @I_vEXMTAMNT,  @I_vMNTXBLWG,  @I_vMYTDTXWG,  @I_vLCLTAXRT,  @I_vLCLTXAMT,  @I_vMAXPERYR,  @I_vINACTIVE,  @I_vSTDDMTHD,  @I_vSTDDPCNT,  @I_vSTDDEDAM,  @I_vSTDEDMAX,  @I_vSTDEDMIN,  @I_vTAXTYPE,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @oErrString  output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 1142     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocalTax] TO [DYNGRP]
GO
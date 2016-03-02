SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopPoDelete]  @I_vPONUMBER char(17),    @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',   @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @DexLockErrorState int,  @DexRowID int,  @iCustomState int,  @iCustomErrString varchar(255),  @iError int,  @iStatus int,  @mylock tinyint,  @oExists int,  @O_oErrorState int,  @OInsStatus int,  @POPTbl char(18),  @POSTATUS tinyint,  @taPopPoDeletePostErrState int,  @taPopPoDeletePostErrString char(255)  select  @O_iErrorState = 0,  @DexLockErrorState = 0,  @DexRowID = 0,  @iCustomState = 0,  @iCustomErrString = '',  @iError = 0,  @iStatus = 0,  @mylock = 0,  @O_oErrorState = 0,  @OInsStatus = 0,  @oErrString = '',  @oExists = 0,  @POPTbl = '',  @POSTATUS = 0,  @taPopPoDeletePostErrState = 0,  @taPopPoDeletePostErrString = '' if (@oErrString is null) begin  select @oErrString = '' end  exec @iStatus = taPopPoDeletePre  @I_vPONUMBER output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomErrString  select @O_iErrorState = 2966    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ((@I_vPONUMBER is null) or (@I_vRequesterTrx is null)) begin  select @O_iErrorState = 2967    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if ((@I_vRequesterTrx < 0) or (@I_vRequesterTrx > 1)) begin  select @O_iErrorState = 2968     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @I_vPONUMBER = UPPER(@I_vPONUMBER)  select @POSTATUS = POSTATUS from POP10100 (nolock) where PONUMBER = @I_vPONUMBER  if (@POSTATUS <> 1) begin  select @O_iErrorState = 2969    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (exists(select 1 from SOP60100 (nolock) where PONUMBER = @I_vPONUMBER)) begin  select @O_iErrorState = 2970    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if exists (select 1 from POP10170 (nolock) where PONUMBER = @I_vPONUMBER) begin  select @O_iErrorState = 11970    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists (select 1 from POP10100 (nolock) where PONUMBER = @I_vPONUMBER and Workflow_Status not in (1,9)) begin  select @O_iErrorState = 12006    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Purchase_Order_Transaction',  @I_vINDEX1=@I_vPONUMBER,  @I_vINDEX2='',  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomState  select @O_iErrorState = 2971   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  while (1=1) begin  select @POPTbl = rtrim(db_name()) + '.dbo.POP10100'  select @DexRowID = DEX_ROW_ID from POP10100 (nolock) where PONUMBER = @I_vPONUMBER   if (not exists(select 1 from tempdb..DEX_LOCK (nolock) where table_path_name = @POPTbl and row_id = @DexRowID and session_id = @@spid))  begin  select @mylock = 1  if (@POSTATUS <> 1)  begin  select @O_iErrorState = 2972    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   exec DYNAMICS..taDEXLOCKS  @I_vOperation = 1,  @I_vtable_path_name = @POPTbl,    @I_vrow_id = @DexRowID,     @O_oExists = @oExists output,    @O_oInsertStatus = @OInsStatus output,   @O_iErrorState = @DexLockErrorState output  select @iError = @@error  if ((@OInsStatus <> 1) or (@DexLockErrorState <> 0) or (@iError <> 0))  begin  if (@DexLockErrorState <> 0)  begin  select @oErrString = rtrim(@oErrString) + ' ' + @DexLockErrorState  end  select @O_iErrorState = 2973   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end   if (exists (select 1 from sysobjects (nolock) where name = 'CPO10110'))  begin  delete CPO10110 where PONUMBER = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2974    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end   if (exists (select 1 from sysobjects (nolock) where name = 'POA40003'))  begin  delete POA40003 where PONUMBER = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2975    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end   delete POP10100 where PONUMBER = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2976    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   delete POP10110 where PONUMBER = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2977    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   delete POP10150 where POPNUMBE = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2978    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   delete POP10160 where PONUMBER = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2979    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   delete POP10550 where POPNUMBE = @I_vPONUMBER  if (@@error <> 0)  begin  select @O_iErrorState = 2980    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  break end  if (@mylock = 1) begin  exec @iStatus = DYNAMICS..taDEXLOCKS  @I_vOperation = 3,   @I_vtable_path_name = @POPTbl,    @I_vrow_id = @DexRowID,     @O_oExists = @oExists output,    @O_oInsertStatus = @OInsStatus output,   @O_iErrorState = @DexLockErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@DexLockErrorState <> 0) or (@iError <> 0))  begin  if (@DexLockErrorState <> 0)  begin  select @oErrString = rtrim(@oErrString) + ' ' + @DexLockErrorState  end  select @O_iErrorState = 2981   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taPopPoDeletePost  @I_vPONUMBER,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @taPopPoDeletePostErrState output,  @oErrString = @taPopPoDeletePostErrString output select @iError = @@error if ((@iStatus <> 0) or (@taPopPoDeletePostErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + @taPopPoDeletePostErrString  select @O_iErrorState = 2982    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Purchase_Order_Transaction',  @I_vINDEX1=@I_vPONUMBER,  @I_vINDEX2='',  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomState  select @O_iErrorState = 2983   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopPoDelete] TO [DYNGRP]
GO

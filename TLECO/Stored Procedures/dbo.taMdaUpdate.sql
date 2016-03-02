SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taMdaUpdate]  @I_vDTASERIES smallint,   @I_vACTINDX int,    @I_vSEQNUMBR int,    @I_vDTAREF char(25),    @I_vDTAQNTY numeric(19,5),   @I_vGROUPID char(15),   @I_vCODEID char(15),   @I_vPOSTDESC char(51) = NULL,  @O_iErrorState int = NULL output, @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @DECPLQTY tinyint,  @TrackQty tinyint,  @POSTDESC char(51),  @QtyTemp numeric(19,5),  @iStatus int,  @O_oErrorState int  select  @DECPLQTY = 2,  @TrackQty = 0,  @POSTDESC = '',  @QtyTemp = 0,  @iStatus = 0,  @O_oErrorState = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  if ( @I_vDTASERIES is NULL or  @I_vACTINDX is NULL or  @I_vSEQNUMBR is NULL or  @I_vDTAREF is NULL or  @I_vDTAQNTY is NULL or  @I_vGROUPID is NULL or  @I_vCODEID is NULL) begin  select @O_iErrorState = 3623    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vDTAREF   = UPPER(@I_vDTAREF),  @I_vGROUPID  = UPPER(@I_vGROUPID),  @I_vCODEID   = UPPER(@I_vCODEID)  if (@I_vDTASERIES not in (2,3,4,11,12)) begin  select @O_iErrorState = 3625     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (not exists (select 1 from DTA10200 (nolock)  where   DTASERIES = @I_vDTASERIES and  DTAREF   = @I_vDTAREF   and  ACTINDX   = @I_vACTINDX   and  SEQNUMBR  = @I_vSEQNUMBR  and  GROUPID   = @I_vGROUPID   and  CODEID   = @I_vCODEID)) begin  select @O_iErrorState = 2999     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @TrackQty = DTA_Quantities, @DECPLQTY = DECPLQTY from DTA00300 (nolock)  where ACTINDX = @I_vACTINDX and GROUPID = @I_vGROUPID if (@TrackQty <> 1) begin  select @O_iErrorState = 3000     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @QtyTemp = round(@I_vDTAQNTY,@DECPLQTY - 1, 1) if ((@I_vDTAQNTY - @QtyTemp) <> 0) begin  select @O_iErrorState = 3496     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vPOSTDESC is NULL) begin  select @POSTDESC = POSTDESC from DTA10200 (nolock)  where DTASERIES = @I_vDTASERIES and  DTAREF   = @I_vDTAREF   and  ACTINDX   = @I_vACTINDX   and  SEQNUMBR  = @I_vSEQNUMBR  and  GROUPID   = @I_vGROUPID   and  CODEID   = @I_vCODEID end else begin  select @POSTDESC = @I_vPOSTDESC end  if (@TrackQty = 1) begin  update DTA10200 set DTAQNTY = @I_vDTAQNTY, POSTDESC = @POSTDESC  where DTASERIES = @I_vDTASERIES and  DTAREF   = @I_vDTAREF   and  ACTINDX   = @I_vACTINDX   and  SEQNUMBR  = @I_vSEQNUMBR  and  GROUPID   = @I_vGROUPID   and  CODEID   = @I_vCODEID  if (@@error <> 0)  begin  select  @O_iErrorState = 1195    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taMdaUpdate] TO [DYNGRP]
GO
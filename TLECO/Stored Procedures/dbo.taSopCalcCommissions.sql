SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopCalcCommissions]  @I_vSOPTYPE smallint,   @I_vSOPNUMBE char(21),    @I_vCOMPRCNT numeric(19,2)=0,  @I_vDOCAMNT numeric(19,5),  @I_vCUSTNMBR char(15)='',   @I_vCURNCYID char(15) = '',  @O_iErrorState int output,  @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @LNITMSEQ int,  @PRCTOSAL numeric(19,5),  @SALSTERR char(15),  @SLPRSNID char(15),  @SUMXTNPRCE numeric(19,5),  @COMMAMNT numeric(19,5),  @ACTSLAMT numeric(19,5),  @CMMSLAMT numeric(19,5),  @NCOMAMNT numeric(19,5),  @COMPRCNT numeric (19,2),  @iStatus int,  @iCursorError int,  @O_oErrorState int,  @O_iCommErrorState int,  @sCommErrString char(255)  select  @LNITMSEQ = 0,  @PRCTOSAL = 0,  @SALSTERR = '',  @SLPRSNID = '',  @COMMAMNT = 0,  @ACTSLAMT = 0,  @CMMSLAMT = 0,  @NCOMAMNT = 0,  @COMPRCNT = 0,  @iStatus = 0,  @iCursorError = 0,  @O_oErrorState = 0,  @O_iCommErrorState = 0,  @sCommErrString = '',  @O_iErrorState = 0  if (@oErrString is null) begin  select @oErrString = '' end  select @I_vSOPNUMBE = UPPER(@I_vSOPNUMBE),  @I_vCUSTNMBR = UPPER(@I_vCUSTNMBR)  declare CommissionDefaults INSENSITIVE cursor for select  SALSTERR,  SLPRSNID  from SOP10200 (nolock) where SOPTYPE = @I_vSOPTYPE and SOPNUMBE = @I_vSOPNUMBE group by SALSTERR, SLPRSNID  open CommissionDefaults select @iCursorError = @@cursor_rows if @iCursorError = 0 begin  deallocate CommissionDefaults end else begin  fetch next from CommissionDefaults into @SALSTERR, @SLPRSNID  while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 707    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   if @SALSTERR <> '' and @SLPRSNID <> ''  begin  if @I_vCOMPRCNT = 0  begin  select @COMPRCNT = COMPRCNT/100.0 from RM00301 (nolock) where SLPRSNID = @SLPRSNID   end  else   begin  select @COMPRCNT = @I_vCOMPRCNT  end  if exists(select 1 from SOP10200 (nolock) where  SOPTYPE = @I_vSOPTYPE and   SOPNUMBE = @I_vSOPNUMBE and  SLPRSNID <> @SLPRSNID and   CMPNTSEQ = 0)   begin  select @LNITMSEQ = 99195  select @PRCTOSAL = 100.00  end  else  begin  select @LNITMSEQ = 99193  select @PRCTOSAL = @I_vDOCAMNT  end   exec @iStatus = taSopCommissions  @I_vSOPTYPE = @I_vSOPTYPE,  @I_vSOPNUMBE = @I_vSOPNUMBE,  @I_vLNITMSEQ = @LNITMSEQ,   @I_vSLPRSNID = @SLPRSNID,  @I_vSALSTERR = @SALSTERR,  @I_vCOMPRCNT = @COMPRCNT,  @I_vCOMMAMNT = @COMMAMNT,  @I_vPRCTOSAL = @PRCTOSAL,   @I_vCUSTNMBR = @I_vCUSTNMBR,  @I_vCURNCYID    = @I_vCURNCYID,   @I_vRequesterTrx= 1,    @O_iErrorState = @O_iCommErrorState output,  @oErrString = @sCommErrString output  if @iStatus <> 0  begin  if (@O_iCommErrorState <> 0)  begin  exec @iStatus = taUpdateString  @O_iCommErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 708    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end  fetch next from CommissionDefaults into @SALSTERR, @SLPRSNID  end  deallocate CommissionDefaults end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopCalcCommissions] TO [DYNGRP]
GO
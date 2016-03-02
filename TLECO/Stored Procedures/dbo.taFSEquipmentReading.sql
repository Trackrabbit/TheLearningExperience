SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSEquipmentReading] @I_vSERLNMBR char(21),    @I_vITEMNMBR char(31),    @I_vMeters_1 int = null,   @I_vMeters_2 int = null,   @I_vMeters_3 int = null,   @I_vMeters_4 int = null,   @I_vMeters_5 int = null,   @I_vReplaces_1 tinyint = 0,   @I_vReplaces_2 tinyint = 0,   @I_vReplaces_3 tinyint = 0,   @I_vReplaces_4 tinyint = 0,   @I_vReplaces_5 tinyint = 0,   @I_vLSTDTEDT datetime = null,   @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',     @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @O_TODAY datetime,  @O_DUMMYDT datetime,  @USERID char(15),  @Line_Seq_Exists smallint,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @iAddCodeErrState int,    @O_oErrorState int,  @iError int,  @EQUIPID int,  @STREQUIPID char(10),  @iValueExists smallint,  @O_vLast_Calc_Date datetime,  @O_iItemMetered smallint,  @O_iBadReading smallint,  @EquipDocExists tinyint,  @O_vMeters_1 int,  @O_vMeters_2 int,  @O_vMeters_3 int,  @O_vMeters_4 int,  @O_vMeters_5 int  select   @O_TODAY = convert(varchar(10), getdate(), 101),  @O_DUMMYDT = convert(varchar(10), '1900/01/01', 100),  @USERID = 'eConnect',  @Line_Seq_Exists = 0,  @iStatus  = 0,  @iCustomState  = 0,  @iCustomErrString = '',  @iAddCodeErrState  = 0,  @O_oErrorState  = 0,  @iError  = 0,  @EQUIPID = 0,  @STREQUIPID = '',  @O_iErrorState = 0,  @oErrString = '',  @iValueExists = 0,  @O_vLast_Calc_Date = @O_DUMMYDT,  @O_iItemMetered = 0,  @O_iBadReading = 0,  @EquipDocExists = 0,  @O_vMeters_1 = 0,  @O_vMeters_2 = 0,  @O_vMeters_3 = 0,  @O_vMeters_4 = 0,  @O_vMeters_5 = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taFSEquipmentReadingPre  @I_vSERLNMBR output,  @I_vITEMNMBR output,  @I_vMeters_1 output,  @I_vMeters_2 output,  @I_vMeters_3 output,  @I_vMeters_4 output,  @I_vMeters_5 output,  @I_vReplaces_1 output,  @I_vReplaces_2 output,  @I_vReplaces_3 output,  @I_vReplaces_4 output,  @I_vReplaces_5 output,  @I_vLSTDTEDT output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 10136    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSERLNMBR is null or  @I_vITEMNMBR is null  ) begin  set @O_iErrorState = 10137    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSERLNMBR='' or  @I_vITEMNMBR=''  ) begin  set @O_iErrorState = 10138    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vMeters_1 < 0 or   @I_vMeters_2 < 0 or   @I_vMeters_3 < 0 or   @I_vMeters_4 < 0 or   @I_vMeters_5 < 0  ) begin  set @O_iErrorState = 10139    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vReplaces_1 < 0 or @I_vReplaces_1 > 1 or  @I_vReplaces_2 < 0 or @I_vReplaces_2 > 1 or  @I_vReplaces_3 < 0 or @I_vReplaces_3 > 1 or  @I_vReplaces_4 < 0 or @I_vReplaces_4 > 1 or  @I_vReplaces_5 < 0 or @I_vReplaces_5 > 1  ) begin  set @O_iErrorState = 10140    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vUpdateIfExists not in (0,1)) begin  set @O_iErrorState = 10141     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vITEMNMBR = UPPER(@I_vITEMNMBR),  @I_vSERLNMBR = UPPER(@I_vSERLNMBR)  set @Line_Seq_Exists = 0 select @Line_Seq_Exists = 1,   @EQUIPID = isnull(EQUIPID, 0),   @O_vMeters_1 = isnull(Meters_1, 0),  @O_vMeters_2 = isnull(Meters_2, 0),  @O_vMeters_3 = isnull(Meters_3, 0),  @O_vMeters_4 = isnull(Meters_4, 0),  @O_vMeters_5 = isnull(Meters_5, 0)  from SVC00300 (nolock) where SERLNMBR = @I_vSERLNMBR and ITEMNMBR = @I_vITEMNMBR  if (@Line_Seq_Exists=0) or (@EQUIPID = 0) begin  set @O_iErrorState = 10142    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vITEMNMBR <> '') begin  if not exists(select 1 from IV00101 (nolock) where ITEMNMBR=@I_vITEMNMBR)  begin  set @O_iErrorState = 10144     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vITEMNMBR <> '') begin  set @iValueExists = 0  select @iValueExists = 1, @O_iItemMetered = isnull(METERED, 0) from SVC00951 (nolock) where ITEMNMBR = @I_vITEMNMBR   if (@@ERROR <> 0)  begin  set @O_iErrorState = 10145   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end   if (@I_vLSTDTEDT is null) or (@I_vLSTDTEDT = '') begin  if (@I_vMeters_1 > 0 or @I_vMeters_2 > 0 or @I_vMeters_3 > 0 or @I_vMeters_4 > 0 or @I_vMeters_5 > 0)  set @I_vLSTDTEDT = @O_TODAY  else  set @I_vLSTDTEDT = @O_DUMMYDT end  if (@I_vLSTDTEDT <> '') and not (datepart(hour,@I_vLSTDTEDT) = 0 and datepart(minute,@I_vLSTDTEDT) = 0 and datepart(second,@I_vLSTDTEDT) = 0   and datepart(millisecond,@I_vLSTDTEDT) = 0) begin  set @O_iErrorState = 10147     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_1 > 0) or (@I_vMeters_2 > 0) or (@I_vMeters_3 > 0) or (@I_vMeters_4 > 0) or (@I_vMeters_5 > 0) begin  if (@O_iItemMetered = 0)  begin  set @O_iErrorState = 10148     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vMeters_1 = @O_vMeters_1)  set @I_vReplaces_1 = 0  if (@I_vReplaces_1 = 0) and (@I_vMeters_1 < @O_vMeters_1) begin  set @O_iErrorState = 10149    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_1 > 0) and (@EQUIPID > 0) and (@I_vReplaces_1 = 0) begin  exec @iStatus = SVC_Check_Large_Meter_Reading  1,   @EQUIPID,   @O_TODAY,   @I_vMeters_1,   @O_iBadReading  if (@iStatus <> 0) or @@error <> 0  begin  set @O_iErrorState = 10150   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if (@O_iBadReading <> 0)  begin  set @O_iErrorState = 10151     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vMeters_2 = @O_vMeters_2)  set @I_vReplaces_2 = 0  if (@I_vReplaces_2 = 0) and (@I_vMeters_2 < @O_vMeters_2) begin  set @O_iErrorState = 10152    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_2 > 0) and (@EQUIPID > 0) and (@I_vReplaces_2 = 0) begin  exec @iStatus = SVC_Check_Large_Meter_Reading  2,   @EQUIPID,   @O_TODAY,   @I_vMeters_2,   @O_iBadReading  if (@iStatus <> 0) or @@error <> 0  begin  set @O_iErrorState = 10328   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@O_iBadReading <> 0)  begin  set @O_iErrorState = 10154     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vMeters_3 = @O_vMeters_3)  set @I_vReplaces_3 = 0  if (@I_vReplaces_3 = 0) and (@I_vMeters_3 < @O_vMeters_3) begin  set @O_iErrorState = 10155    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_3 > 0) and (@EQUIPID > 0) and (@I_vReplaces_3 = 0) begin  exec @iStatus = SVC_Check_Large_Meter_Reading  3,   @EQUIPID,   @O_TODAY,   @I_vMeters_3,   @O_iBadReading  if (@iStatus <> 0) or @@error <> 0  begin  set @O_iErrorState = 10156   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@O_iBadReading <> 0)  begin  set @O_iErrorState = 10157     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vMeters_4 = @O_vMeters_4)  set @I_vReplaces_4 = 0  if (@I_vReplaces_4 = 0) and (@I_vMeters_4 < @O_vMeters_4) begin  set @O_iErrorState = 10158    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_4 > 0) and (@EQUIPID > 0) and (@I_vReplaces_4 = 0) begin  exec @iStatus = SVC_Check_Large_Meter_Reading  4,   @EQUIPID,   @O_TODAY,   @I_vMeters_4,   @O_iBadReading  if (@iStatus <> 0) or @@error <> 0  begin  set @O_iErrorState = 10159   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@O_iBadReading <> 0)  begin  set @O_iErrorState = 10160     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vMeters_5 = @O_vMeters_5)  set @I_vReplaces_5 = 0  if (@I_vReplaces_5 = 0) and (@I_vMeters_5 < @O_vMeters_5) begin  set @O_iErrorState = 10161    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vMeters_5 > 0) and (@EQUIPID > 0) and (@I_vReplaces_5 = 0) begin  exec @iStatus = SVC_Check_Large_Meter_Reading  5,   @EQUIPID,   @O_TODAY,   @I_vMeters_5,   @O_iBadReading  if (@iStatus <> 0) or @@error <> 0  begin  set @O_iErrorState = 10162   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@O_iBadReading <> 0)  begin  set @O_iErrorState = 10163     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@O_iItemMetered = 1) begin  select @I_vMeters_1 = isnull(@I_vMeters_1, 0),  @I_vMeters_2 = isnull(@I_vMeters_2, 0),  @I_vMeters_3 = isnull(@I_vMeters_3, 0),  @I_vMeters_4 = isnull(@I_vMeters_4, 0),  @I_vMeters_5 = isnull(@I_vMeters_5, 0)   select @O_vMeters_1 = case   when isnull(@I_vMeters_1, 0) > 0 then @I_vMeters_1  else @O_vMeters_1  end,  @O_vMeters_2 = case   when isnull(@I_vMeters_2, 0) > 0 then @I_vMeters_2  else @O_vMeters_2  end,  @O_vMeters_3 = case   when isnull(@I_vMeters_3, 0) > 0 then @I_vMeters_3  else @O_vMeters_3  end,  @O_vMeters_4 = case   when isnull(@I_vMeters_4, 0) > 0 then @I_vMeters_4  else @O_vMeters_4  end,  @O_vMeters_5 = case   when isnull(@I_vMeters_5, 0) > 0 then @I_vMeters_5  else @O_vMeters_5  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (@O_iItemMetered = 1)  and (@I_vMeters_1 > 0 or @I_vMeters_2 > 0 or @I_vMeters_3 > 0 or @I_vMeters_4 > 0 or @I_vMeters_5 > 0) begin  set @STREQUIPID = convert(char(10), @EQUIPID)  exec @iStatus = SVC_METER_Post_Serial_Readings  @EQUIPID,  @I_vMeters_1,  @I_vMeters_2,  @I_vMeters_3,  @I_vMeters_4,  @I_vMeters_5,  @I_vReplaces_1,  @I_vReplaces_2,  @I_vReplaces_3,  @I_vReplaces_4,  @I_vReplaces_5,  @I_vLSTDTEDT,  @USERID,  'Equipment',   'CLS',   @STREQUIPID  select @iError = @@error  if (@iStatus <> 0) or (@iError <> 0)  begin  set @O_iErrorState = 10164    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  if (@Line_Seq_Exists = 1) and (@EQUIPID <> 0) begin  if (@I_vUpdateIfExists > 0)  begin  update SVC00300 set  SERLNMBR = @I_vSERLNMBR,  ITEMNMBR = @I_vITEMNMBR,  Meters_1 = @O_vMeters_1,  Meters_2 = @O_vMeters_2,  Meters_3 = @O_vMeters_3,  Meters_4 = @O_vMeters_4,  Meters_5 = @O_vMeters_5  where EQUIPID = @EQUIPID AND SERLNMBR = @I_vSERLNMBR and ITEMNMBR = @I_vITEMNMBR  if (@@error <> 0)  begin  set @O_iErrorState = 10165    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  exec @iStatus = taFSEquipmentReadingPost  @I_vSERLNMBR,  @I_vITEMNMBR,  @I_vMeters_1,  @I_vMeters_2,  @I_vMeters_3,  @I_vMeters_4,  @I_vMeters_5,  @I_vReplaces_1,  @I_vReplaces_2,  @I_vReplaces_3,  @I_vReplaces_4,  @I_vReplaces_5,  @I_vLSTDTEDT,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 10166    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSEquipmentReading] TO [DYNGRP]
GO

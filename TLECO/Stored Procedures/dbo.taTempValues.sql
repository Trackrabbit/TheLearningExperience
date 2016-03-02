SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taTempValues]  @I_vSETORGET smallint = 1,     @I_vKEYVALUE varchar(255) = '',     @I_vSTRVALUE01 varchar(255) = null output,   @I_vSTRVALUE02 varchar(255) = null output,   @I_vSTRVALUE03 varchar(255) = null output,   @I_vSTRVALUE04 varchar(255) = null output,   @I_vSTRVALUE05 varchar(255) = null output,   @I_vSTRVALUE06 varchar(255) = null output,   @I_vSTRVALUE07 varchar(255) = null output,   @I_vSTRVALUE08 varchar(255) = null output,   @I_vSTRVALUE09 varchar(255) = null output,   @I_vSTRVALUE10 varchar(255) = null output,   @I_vINTVALUE01 int = null output,    @I_vINTVALUE02 int = null output,    @I_vINTVALUE03 int = null output,    @I_vINTVALUE04 int = null output,    @I_vINTVALUE05 int = null output,    @I_vINTVALUE06 int = null output,    @I_vINTVALUE07 int = null output,    @I_vINTVALUE08 int = null output,    @I_vINTVALUE09 int = null output,    @I_vINTVALUE10 int = null output,    @I_vNUMVALUE01 numeric(19,5) = null output,   @I_vNUMVALUE02 numeric(19,5) = null output,   @I_vNUMVALUE03 numeric(19,5) = null output,   @I_vNUMVALUE04 numeric(19,5) = null output,   @I_vNUMVALUE05 numeric(19,5) = null output,   @I_vNUMVALUE06 numeric(19,5) = null output,   @I_vNUMVALUE07 numeric(19,5) = null output,   @I_vNUMVALUE08 numeric(19,5) = null output,   @I_vNUMVALUE09 numeric(19,5) = null output,   @I_vNUMVALUE10 numeric(19,5) = null output,   @I_vDATEVLUE01 datetime = null output,    @I_vDATEVLUE02 datetime = null output,    @I_vDATEVLUE03 datetime = null output,    @I_vDATEVLUE04 datetime = null output,    @I_vDATEVLUE05 datetime = null output,    @O_iErrorState int output,    @oErrString varchar(255) output     with encryption as  set transaction isolation level read uncommitted set nocount on  declare @iStatus int, @O_oErrorState int  select  @iStatus = 0, @O_oErrorState = 0, @O_iErrorState = 0, @oErrString = '' if @I_vSETORGET in (1,2) begin  if not exists (select * from tempdb.dbo.sysobjects where id = Object_id('tempdb.dbo.#TempValues') and type = 'U')  begin  create table #TempValues (  KEYVALUE varchar(255),  STRVALUE01 varchar(255),    STRVALUE02 varchar(255),    STRVALUE03 varchar(255),    STRVALUE04 varchar(255),    STRVALUE05 varchar(255),    STRVALUE06 varchar(255),    STRVALUE07 varchar(255),    STRVALUE08 varchar(255),    STRVALUE09 varchar(255),    STRVALUE10 varchar(255),    INTVALUE01 int,      INTVALUE02 int,      INTVALUE03 int,      INTVALUE04 int,      INTVALUE05 int,      INTVALUE06 int,      INTVALUE07 int,      INTVALUE08 int,      INTVALUE09 int,      INTVALUE10 int,      NUMVALUE01 numeric(19,5),    NUMVALUE02 numeric(19,5),    NUMVALUE03 numeric(19,5),    NUMVALUE04 numeric(19,5),    NUMVALUE05 numeric(19,5),    NUMVALUE06 numeric(19,5),    NUMVALUE07 numeric(19,5),    NUMVALUE08 numeric(19,5),    NUMVALUE09 numeric(19,5),    NUMVALUE10 numeric(19,5),    DATEVLUE01 datetime,     DATEVLUE02 datetime,     DATEVLUE03 datetime,     DATEVLUE04 datetime,     DATEVLUE05 datetime )      end  if (@@error <> 0)  begin  select @O_iErrorState = 9470    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if @I_vSETORGET = 1  begin  delete #TempValues where KEYVALUE = @I_vKEYVALUE  if (@@error <> 0)  begin  select @O_iErrorState = 9471    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   insert into #TempValues (  KEYVALUE,  STRVALUE01,    STRVALUE02,    STRVALUE03,    STRVALUE04,    STRVALUE05,    STRVALUE06,    STRVALUE07,    STRVALUE08,    STRVALUE09,    STRVALUE10,    INTVALUE01,    INTVALUE02,    INTVALUE03,    INTVALUE04,    INTVALUE05,    INTVALUE06,    INTVALUE07,    INTVALUE08,    INTVALUE09,    INTVALUE10,    NUMVALUE01,    NUMVALUE02,    NUMVALUE03,    NUMVALUE04,    NUMVALUE05,    NUMVALUE06,    NUMVALUE07,    NUMVALUE08,    NUMVALUE09,    NUMVALUE10,     DATEVLUE01,   DATEVLUE02,  DATEVLUE03,  DATEVLUE04,  DATEVLUE05 )  select  @I_vKEYVALUE,  @I_vSTRVALUE01,    @I_vSTRVALUE02,    @I_vSTRVALUE03,    @I_vSTRVALUE04,    @I_vSTRVALUE05,    @I_vSTRVALUE06,    @I_vSTRVALUE07,    @I_vSTRVALUE08,    @I_vSTRVALUE09,    @I_vSTRVALUE10,    @I_vINTVALUE01,    @I_vINTVALUE02,    @I_vINTVALUE03,    @I_vINTVALUE04,    @I_vINTVALUE05,    @I_vINTVALUE06,    @I_vINTVALUE07,    @I_vINTVALUE08,    @I_vINTVALUE09,    @I_vINTVALUE10,    @I_vNUMVALUE01,    @I_vNUMVALUE02,    @I_vNUMVALUE03,    @I_vNUMVALUE04,    @I_vNUMVALUE05,    @I_vNUMVALUE06,    @I_vNUMVALUE07,    @I_vNUMVALUE08,    @I_vNUMVALUE09,    @I_vNUMVALUE10,    @I_vDATEVLUE01,  @I_vDATEVLUE02,  @I_vDATEVLUE03,  @I_vDATEVLUE04,  @I_vDATEVLUE05  if (@@error <> 0)  begin  select @O_iErrorState = 9472    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end else  if @I_vSETORGET in (3,4) and exists (select * from tempdb.dbo.sysobjects where id = Object_id('tempdb.dbo.#TempValues') and type = 'U') begin  select top 1  @I_vSTRVALUE01 = STRVALUE01,    @I_vSTRVALUE02 = STRVALUE02,    @I_vSTRVALUE03 = STRVALUE03,    @I_vSTRVALUE04 = STRVALUE04,    @I_vSTRVALUE05 = STRVALUE05,    @I_vSTRVALUE06 = STRVALUE06,    @I_vSTRVALUE07 = STRVALUE07,    @I_vSTRVALUE08 = STRVALUE08,    @I_vSTRVALUE09 = STRVALUE09,    @I_vSTRVALUE10 = STRVALUE10,    @I_vINTVALUE01 = INTVALUE01,    @I_vINTVALUE02 = INTVALUE02,    @I_vINTVALUE03 = INTVALUE03,    @I_vINTVALUE04 = INTVALUE04,    @I_vINTVALUE05 = INTVALUE05,    @I_vINTVALUE06 = INTVALUE06,    @I_vINTVALUE07 = INTVALUE07,    @I_vINTVALUE08 = INTVALUE08,    @I_vINTVALUE09 = INTVALUE09,    @I_vINTVALUE10 = INTVALUE10,    @I_vNUMVALUE01 = NUMVALUE01,    @I_vNUMVALUE02 = NUMVALUE02,    @I_vNUMVALUE03 = NUMVALUE03,    @I_vNUMVALUE04 = NUMVALUE04,    @I_vNUMVALUE05 = NUMVALUE05,    @I_vNUMVALUE06 = NUMVALUE06,    @I_vNUMVALUE07 = NUMVALUE07,    @I_vNUMVALUE08 = NUMVALUE08,    @I_vNUMVALUE09 = NUMVALUE09,    @I_vNUMVALUE10 = NUMVALUE10,     @I_vDATEVLUE01 = DATEVLUE01,  @I_vDATEVLUE02 = DATEVLUE02,  @I_vDATEVLUE03 = DATEVLUE03,  @I_vDATEVLUE04 = DATEVLUE04,  @I_vDATEVLUE05 = DATEVLUE05  from #TempValues where KEYVALUE = @I_vKEYVALUE  if @I_vSETORGET = 3  delete #TempValues end if @I_vSTRVALUE01 is null select @I_vSTRVALUE01 = ''   if @I_vSTRVALUE02 is null select @I_vSTRVALUE02 = ''   if @I_vSTRVALUE03 is null select @I_vSTRVALUE03 = ''   if @I_vSTRVALUE04 is null select @I_vSTRVALUE04 = ''   if @I_vSTRVALUE05 is null select @I_vSTRVALUE05 = ''   if @I_vSTRVALUE06 is null select @I_vSTRVALUE06 = ''   if @I_vSTRVALUE07 is null select @I_vSTRVALUE07 = ''   if @I_vSTRVALUE08 is null select @I_vSTRVALUE08 = ''   if @I_vSTRVALUE09 is null select @I_vSTRVALUE09 = ''   if @I_vSTRVALUE10 is null select @I_vSTRVALUE10 = ''   if @I_vINTVALUE01 is null select @I_vINTVALUE01 = 0   if @I_vINTVALUE02 is null select @I_vINTVALUE02 = 0   if @I_vINTVALUE03 is null select @I_vINTVALUE03 = 0   if @I_vINTVALUE04 is null select @I_vINTVALUE04 = 0   if @I_vINTVALUE05 is null select @I_vINTVALUE05 = 0   if @I_vINTVALUE06 is null select @I_vINTVALUE06 = 0   if @I_vINTVALUE07 is null select @I_vINTVALUE07 = 0   if @I_vINTVALUE08 is null select @I_vINTVALUE08 = 0   if @I_vINTVALUE09 is null select @I_vINTVALUE09 = 0   if @I_vINTVALUE10 is null select @I_vINTVALUE10 = 0   if @I_vNUMVALUE01 is null select @I_vNUMVALUE01 = 0   if @I_vNUMVALUE02 is null select @I_vNUMVALUE02 = 0   if @I_vNUMVALUE03 is null select @I_vNUMVALUE03 = 0   if @I_vNUMVALUE04 is null select @I_vNUMVALUE04 = 0   if @I_vNUMVALUE05 is null select @I_vNUMVALUE05 = 0   if @I_vNUMVALUE06 is null select @I_vNUMVALUE06 = 0   if @I_vNUMVALUE07 is null select @I_vNUMVALUE07 = 0   if @I_vNUMVALUE08 is null select @I_vNUMVALUE08 = 0   if @I_vNUMVALUE09 is null select @I_vNUMVALUE09 = 0   if @I_vNUMVALUE10 is null select @I_vNUMVALUE10 = 0    if @I_vDATEVLUE01 is null select @I_vDATEVLUE01 = '' if @I_vDATEVLUE02 is null select @I_vDATEVLUE02 = '' if @I_vDATEVLUE03 is null select @I_vDATEVLUE03 = '' if @I_vDATEVLUE04 is null select @I_vDATEVLUE04 = '' if @I_vDATEVLUE05 is null select @I_vDATEVLUE05 = '' return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taTempValues] TO [DYNGRP]
GO

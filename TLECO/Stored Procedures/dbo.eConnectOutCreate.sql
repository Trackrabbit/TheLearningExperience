SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[eConnectOutCreate]  @I_vDOCTYPE varchar(50),   @I_vOUTPUTTYPE int = 0,   @I_vINDEX1TO varchar(75)='',   @I_vINDEX2TO varchar(75)='',   @I_vINDEX3TO varchar(75)='',   @I_vINDEX4TO varchar(75)='',   @I_vINDEX5TO varchar(75)='',   @I_vINDEX6TO varchar(75)='',  @I_vINDEX7TO varchar(75)='',   @I_vINDEX8TO varchar(75)='',   @I_vINDEX9TO varchar(75)='',   @I_vINDEX10TO varchar(75)='',   @I_vINDEX11TO varchar(75)='',   @I_vINDEX12TO varchar(75)='',  @I_vINDEX13TO varchar(75)='',   @I_vINDEX14TO varchar(75)='',   @I_vINDEX15TO varchar(75)='',   @I_vINDEX1FROM varchar(75)='',   @I_vINDEX2FROM varchar(75)='',   @I_vINDEX3FROM varchar(75)='',   @I_vINDEX4FROM varchar(75)='',   @I_vINDEX5FROM varchar(75)='',   @I_vINDEX6FROM varchar(75)='',   @I_vINDEX7FROM varchar(75)='',   @I_vINDEX8FROM varchar(75)='',   @I_vINDEX9FROM varchar(75)='',   @I_vINDEX10FROM varchar(75)='',  @I_vINDEX11FROM varchar(75)='',  @I_vINDEX12FROM varchar(75)='',  @I_vINDEX13FROM varchar(75)='',  @I_vINDEX14FROM varchar(75)='',  @I_vINDEX15FROM varchar(75)='',  @I_vFORLOAD int=0,   @I_vFORLIST int=0,         @I_vACTION  int=0,   @I_vROWCOUNT int=0,   @I_vREMOVE int=0,   @I_vDATE1 datetime = '',  @I_vWhereClause varchar(1000)='',  @O_iErrorState int = NULL  output  with encryption as  set transaction isolation level read uncommitted  SET NOCOUNT ON  declare @proc char(50),  @StartPos int  select @O_iErrorState = 1,  @proc = '',  @StartPos = 1  if (@I_vDOCTYPE like 'WS%GetList') begin  set @StartPos = CHARINDEX('GetList',@I_vDOCTYPE)  set @proc = 'dbo.taRequester' + rtrim(substring(@I_vDOCTYPE,1,@StartPos-1)) + ltrim(str(@I_vOUTPUTTYPE)) end else begin  set @proc = 'dbo.taRequester' + rtrim(@I_vDOCTYPE) + ltrim(str(@I_vOUTPUTTYPE)) end  exec eConnectOutCreateProc  @I_vDOCTYPE,  @I_vOUTPUTTYPE,  @I_vINDEX1TO,  @I_vINDEX2TO,  @I_vINDEX3TO,  @I_vINDEX4TO,  @I_vINDEX5TO,  @I_vINDEX6TO,  @I_vINDEX7TO,  @I_vINDEX8TO,  @I_vINDEX9TO,  @I_vINDEX10TO,  @I_vINDEX11TO,  @I_vINDEX12TO,  @I_vINDEX13TO,  @I_vINDEX14TO,  @I_vINDEX15TO,  @I_vINDEX1FROM,  @I_vINDEX2FROM,  @I_vINDEX3FROM,  @I_vINDEX4FROM,  @I_vINDEX5FROM,  @I_vINDEX6FROM,  @I_vINDEX7FROM,  @I_vINDEX8FROM,  @I_vINDEX9FROM,  @I_vINDEX10FROM,  @I_vINDEX11FROM,  @I_vINDEX12FROM,  @I_vINDEX13FROM,  @I_vINDEX14FROM,  @I_vINDEX15FROM,  @I_vFORLOAD,  @I_vFORLIST,  @I_vACTION,  @I_vROWCOUNT,  @I_vREMOVE,  @O_iErrorState  output  exec ('GRANT  EXECUTE  ON ' + @proc + ' TO DYNGRP')  select @O_iErrorState = 0 return    
GO
GRANT EXECUTE ON  [dbo].[eConnectOutCreate] TO [DYNGRP]
GO
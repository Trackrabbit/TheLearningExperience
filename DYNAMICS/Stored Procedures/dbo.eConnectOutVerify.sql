SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[eConnectOutVerify]  @I_vDOCTYPE varchar(50),   @I_vINDEX1 varchar(75)='',   @I_vINDEX2 varchar(75)='',   @I_vINDEX3 varchar(75)='',   @I_vINDEX4 varchar(75)='',   @I_vINDEX5 varchar(75)='',   @I_vINDEX6 varchar(75)='',  @I_vINDEX7 varchar(75)='',   @I_vINDEX8 varchar(75)='',   @I_vINDEX9 varchar(75)='',   @I_vINDEX10 varchar(75)='',   @I_vINDEX11 varchar(75)='',   @I_vINDEX12 varchar(75)='',  @I_vINDEX13 varchar(75)='',   @I_vINDEX14 varchar(75)='',   @I_vINDEX15 varchar(75)='',   @I_vDelete smallint = 0,  @O_iErrorState int = 0  output  with encryption as  set transaction isolation level read uncommitted  SET NOCOUNT ON  declare @proc char(50),  @actionbegin int,  @actionend int  select @O_iErrorState = 2046,   @proc = '',  @actionbegin = 0,  @actionend = 0  if (@I_vDelete = 0) begin  insert dbo.eConnectOutTemp  (DOCTYPE,  INDEX1,  INDEX2,  INDEX3,  INDEX4,  INDEX5,  INDEX6,  INDEX7,  INDEX8,  INDEX9,  INDEX10,  INDEX11,  INDEX12,  INDEX13,  INDEX14,  INDEX15)  select  @I_vDOCTYPE,  @I_vINDEX1,  @I_vINDEX2,  @I_vINDEX3,  @I_vINDEX4,  @I_vINDEX5,  @I_vINDEX6,  @I_vINDEX7,  @I_vINDEX8,  @I_vINDEX9,  @I_vINDEX10,  @I_vINDEX11,  @I_vINDEX12,  @I_vINDEX13,  @I_vINDEX14,  @I_vINDEX15 end else begin  delete o from dbo.eConnectOutTemp o (updlock) where  DOCTYPE = @I_vDOCTYPE and  INDEX1 = @I_vINDEX1 and  INDEX2 = @I_vINDEX2 and  INDEX3 = @I_vINDEX3 and  INDEX4 = @I_vINDEX4 and  INDEX5 = @I_vINDEX5 and  INDEX6 = @I_vINDEX6 and  INDEX7 = @I_vINDEX7 and  INDEX8 = @I_vINDEX8 and  INDEX9 = @I_vINDEX9 and  INDEX10 = @I_vINDEX10 and  INDEX11 = @I_vINDEX11 and  INDEX12 = @I_vINDEX12 and  INDEX13 = @I_vINDEX13 and  INDEX14 = @I_vINDEX14 and  INDEX15 = @I_vINDEX15 end  if @@error = 0  select @O_iErrorState = 0  return    
GO
GRANT EXECUTE ON  [dbo].[eConnectOutVerify] TO [DYNGRP]
GO
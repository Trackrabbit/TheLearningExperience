SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smUsrCmpnyAccssChckAccssCHG]  @I_cUserID varchar(15) = NULL,  @I_cUserClass char(15) = NULL,  @I_sCompanyID smallint = NULL,  @I_tControlUser tinyint = NULL,  @O_iErrorState int  = NULL output as  declare  @tTransaction tinyint,    @iError int,     @iStatus int,     @MAX_BIN binary(4),   @cMasterOwner char(30),    @cDynamicsOwner char(30),   @TRUE tinyint,    @FALSE tinyint    if @I_cUserID is NULL  or @I_sCompanyID is NULL  or @I_cUserClass is NULL  or @I_tControlUser is NULL begin  select @O_iErrorState = 20111  return end else begin  select @O_iErrorState = 0 end  select @MAX_BIN = 0xFFFFFFFF  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'TRUE',  @TRUE output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @iStatus <> 0 or @O_iErrorState <> 0   return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'FALSE',  @FALSE output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @iStatus <> 0 or @O_iErrorState <> 0   return @iStatus  if @I_cUserClass = '' begin   insert into   DYNAMICS.dbo.SY60100  (TRKUSER,  USERID,  CMPANYID,  SRBCHSEC_1,  SRBCHSEC_2,  SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,  MSCPRMIS)  values  (0,  @I_cUserID,  @I_sCompanyID,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN)  if @@rowcount <> 1  begin  select @O_iErrorState = 20190  return  end end else begin   if exists (select   1   from   DYNAMICS.dbo.SY40400   where   USRCLASS = @I_cUserClass)  begin  insert into  DYNAMICS.dbo.SY60100  (TRKUSER,  USERID,  CMPANYID,  SRBCHSEC_1,  SRBCHSEC_2,  SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,  MSCPRMIS)  select  0,  @I_cUserID,  @I_sCompanyID,  SRBCHSEC_1,  SRBCHSEC_2,  SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,   MSCPRMIS  from  DYNAMICS.dbo.SY40400  where  USRCLASS = @I_cUserClass   if @@rowcount <> 1  begin  select @O_iErrorState = 20210  return  end  end   else  begin  insert into   DYNAMICS.dbo.SY60100  (TRKUSER,  USERID,  CMPANYID,  SRBCHSEC_1,  SRBCHSEC_2,   SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,  MSCPRMIS)  values  (0,  @I_cUserID,  @I_sCompanyID,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0)   if @@rowcount <> 1  begin  select @O_iErrorState = 20211  return  end  end  end   return    
GO
GRANT EXECUTE ON  [dbo].[smUsrCmpnyAccssChckAccssCHG] TO [DYNGRP]
GO
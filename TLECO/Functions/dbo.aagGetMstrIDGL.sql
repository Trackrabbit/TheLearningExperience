SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    Function [dbo].[aagGetMstrIDGL]( @I_LinkType int = 0,  @I_MasterID varchar(130), @I_DimID int = 0,  @I_ACTINDX int ) RETURNS  varchar(50)  AS BEGIN declare @MstrID varchar(50),  @aaAcctClassID  int  select  @MstrID  = '', @aaAcctClassID = 0 Select @aaAcctClassID = isnull(aaAcctClassID,0) from AAG00200 where ACTINDX = @I_ACTINDX if @aaAcctClassID = 0 begin return @MstrID end if @I_LinkType = 0  begin RETURN @MstrID end   if @I_LinkType  = 2 begin if exists (Select aaSetCustID from AAG00201 where aaAcctClassID = @aaAcctClassID  and aaSetCustID = 1)  select @MstrID = CUSTNMBR from RM00101 where CUSTNMBR = @I_MasterID  else RETURN @MstrID  end if @I_LinkType  = 6 begin if exists (Select aaSetVendID from AAG00201 where aaAcctClassID = @aaAcctClassID  and aaSetVendID = 1)  select @MstrID = VENDORID from PM00200 where VENDORID = @I_MasterID else RETURN @MstrID  end if @I_LinkType  = 3 begin if exists (Select aaSetEmployeeID from AAG00201 where aaAcctClassID = @aaAcctClassID  and aaSetEmployeeID = 1)  select @MstrID = EMPLOYID from UPR00100 where EMPLOYID = @I_MasterID else RETURN @MstrID  end IF @MstrID=NULL  select @MstrID=''  RETURN(@MstrID) END    
GO
GRANT EXECUTE ON  [dbo].[aagGetMstrIDGL] TO [DYNGRP]
GO

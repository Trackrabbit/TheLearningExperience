SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create     Function [dbo].[aagGetMstrID]( @I_LinkType int = 0,  @I_MasterID varchar(130), @I_DimID int = 0  ) RETURNS  varchar(50)  AS BEGIN declare @MstrID varchar(50)   if @I_LinkType = 0  RETURN 0  else if @I_LinkType = 1 begin select @MstrID = a.ACTINDX from GL00105 a join GL00100 b on a.ACTINDX = b.ACTINDX where b.ACCTTYPE < 3 and a.ACTNUMST = @I_MasterID end else if @I_LinkType = 2 begin select @MstrID = CUSTNMBR from RM00101 where CUSTNMBR = @I_MasterID  end else if @I_LinkType = 3 begin select @MstrID = EMPLOYID from UPR00100 where EMPLOYID = @I_MasterID  end else if @I_LinkType = 4 begin select @MstrID = ITEMNMBR from IV00101 where ITEMNMBR = @I_MasterID  end else if @I_LinkType = 5 begin select @MstrID = LOCNCODE from IV40700 where LOCNCODE = @I_MasterID  end else if @I_LinkType = 6 begin select @MstrID = VENDORID from PM00200 where VENDORID = @I_MasterID  end else if @I_LinkType = 7 begin select @MstrID = aaTrxDimCodeID from AAG00401 where aaTrxDimID = @I_MasterID end  IF @MstrID=NULL select @MstrID=0  RETURN(@MstrID) END    
GO
GRANT EXECUTE ON  [dbo].[aagGetMstrID] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagAcctLinkUpdateAll]  @Where varchar(500),  @INaaAcctClassID int,  @Opt int,  @INACTINDX int as  begin  set nocount on  declare @ACTINDX int,  @aaAcctClassID int,  @Status int  if @Opt = 0  begin   exec('declare cAcct cursor static for  select ACTINDX,aaAcctClassID from AAG00200 '+@Where)  open cAcct  fetch next from cAcct into @ACTINDX,@aaAcctClassID  while @@fetch_status = 0  begin  if @aaAcctClassID <> @INaaAcctClassID  begin  update AAG00200  set aaAcctClassID =  @INaaAcctClassID,  aaChangeDate = convert(char(12), getdate(), 102),  aaChangeTime = convert(char(12), getdate(), 108)  where ACTINDX = @ACTINDX  exec aagUpdateUnpostedDistsForAcct            @ACTINDX,  @Status output  end  fetch next from cAcct into @ACTINDX,@aaAcctClassID  end   close cAcct  deallocate cAcct  end  else if @Opt= 1  begin  update AAG00200 set aaAcctClassID = @INaaAcctClassID,  aaChangeDate = convert(char(12), getdate(), 102),  aaChangeTime = convert(char(12), getdate(), 108)  where ACTINDX = @INACTINDX  exec aagUpdateUnpostedDistsForAcct @INACTINDX,@Status output  end  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagAcctLinkUpdateAll] TO [DYNGRP]
GO

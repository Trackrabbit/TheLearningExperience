SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagPreCheck]  @OK int output as begin  set nocount on  select @OK = count(*) from AAG00200  where ACTINDX > 0 and aaAcctClassID > 0  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagPreCheck] TO [DYNGRP]
GO

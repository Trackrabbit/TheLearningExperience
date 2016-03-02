SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetLoggedInUserCount]  @I_nUserType smallint,  @O_nUserCount   int   = 0 output as  select @O_nUserCount = 0  select @O_nUserCount = count(*) from smUsersLoggedIn   where UserType = @I_nUserType and   UserStatus <> 3     
GO
GRANT EXECUTE ON  [dbo].[smGetLoggedInUserCount] TO [DYNGRP]
GO

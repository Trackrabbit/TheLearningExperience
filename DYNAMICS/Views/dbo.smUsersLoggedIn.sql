SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[smUsersLoggedIn] as (  select ACTIVITY.USERID as 'USERID', SY01400.UserType as 'UserType', SY01400.UserStatus as 'UserStatus'  from ACTIVITY left outer join SY01400 ON (SY01400.USERID = ACTIVITY.USERID) )    
GO
GRANT SELECT ON  [dbo].[smUsersLoggedIn] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[smUsersLoggedIn] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[smUsersLoggedIn] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[smUsersLoggedIn] TO [DYNGRP]
GO

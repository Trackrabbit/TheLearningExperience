SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smCompanyVerification] as  declare @cDBName char(10)  select  @cDBName = db_name() return    
GO
GRANT EXECUTE ON  [dbo].[smCompanyVerification] TO [DYNGRP]
GO

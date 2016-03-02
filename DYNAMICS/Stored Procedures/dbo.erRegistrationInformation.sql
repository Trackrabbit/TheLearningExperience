SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erRegistrationInformation] as  set nocount on select  site_name  = SITENAME,  registration_keys_1 = REGNKEYS_1,  registration_keys_2 = REGNKEYS_2,  registration_keys_3 = REGNKEYS_3,  registration_keys_4 = REGNKEYS_4,  registration_keys_5 = REGNKEYS_5 from  SY03500  return 0    
GO
GRANT EXECUTE ON  [dbo].[erRegistrationInformation] TO [DYNGRP]
GO

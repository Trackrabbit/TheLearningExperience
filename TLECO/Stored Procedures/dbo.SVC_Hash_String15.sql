SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Hash_String15] (@In_Str varchar(15), @Out_Hash integer output) As select @Out_Hash = isnull(ascii(substring(@In_Str,1,1))*31,0)  + isnull(ascii(substring(@In_Str,2,1))*47,0)  + isnull(ascii(substring(@In_Str,3,1))*61,0)  + isnull(ascii(substring(@In_Str,4,1))*83,0)  + isnull(ascii(substring(@In_Str,5,1))*101,0)  + isnull(ascii(substring(@In_Str,6,1))*113,0)  + isnull(ascii(substring(@In_Str,7,1))*127,0)  + isnull(ascii(substring(@In_Str,8,1))*139,0)  + isnull(ascii(substring(@In_Str,9,1))*157,0)  + isnull(ascii(substring(@In_Str,10,1))*179,0)  + isnull(ascii(substring(@In_Str,11,1))*199,0)  + isnull(ascii(substring(@In_Str,12,1))*223,0)  + isnull(ascii(substring(@In_Str,13,1))*241,0)  + isnull(ascii(substring(@In_Str,14,1))*263,0)  + isnull(ascii(substring(@In_Str,15,1))*283,0)  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Hash_String15] TO [DYNGRP]
GO

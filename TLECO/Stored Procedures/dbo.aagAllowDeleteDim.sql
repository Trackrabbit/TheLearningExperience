SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagAllowDeleteDim] @O_fAllowDeleteDim tinyint = 0 output as  if exists(select aaIsOptionSet from AAG00700 where aaMultiLangStr = '3180opt_3'  and aaIsOptionSet = 1)  begin  set @O_fAllowDeleteDim = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagAllowDeleteDim] TO [DYNGRP]
GO

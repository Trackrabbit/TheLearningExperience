SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateFixedAllocationAccountRcdPre]  @I_vACTNUMST char(75) output, @I_vDISTACTNUMST char(75) output, @I_vPRCNTAGE numeric (19,5) output, @I_vUpdateIfExists tinyint output, @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output, @I_vUSRDEFND2 char(50) output, @I_vUSRDEFND3 char(50) output, @I_vUSRDEFND4 varchar(8000) output, @I_vUSRDEFND5 varchar(8000) output, @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateFixedAllocationAccountRcdPre] TO [DYNGRP]
GO

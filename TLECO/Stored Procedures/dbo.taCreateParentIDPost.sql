SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateParentIDPost]  @I_vCPRCSTNM char(15),    @I_vNAALLOWRECEIPTS tinyint,   @I_vNACREDITCHECK tinyint,   @I_vNAFINANCECHARGE tinyint,   @I_vNAHOLDINACTIVE tinyint,   @I_vNADEFPARENTVEN tinyint,   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateParentIDPost] TO [DYNGRP]
GO

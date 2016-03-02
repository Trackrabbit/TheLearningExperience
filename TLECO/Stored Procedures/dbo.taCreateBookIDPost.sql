SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBookIDPost]  @I_vBOOKID char(15),    @I_vBOOKDESC char(30),   @I_vDEPRPERIOD smallint,   @I_vCURRFISCALYR smallint,   @I_vAuto_Add_Book_Info tinyint,  @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBookIDPost] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopRctUserDefinedPost]  @I_vPOPRCTNM char(17),     @I_vUser_Defined_List01 char(31),  @I_vUser_Defined_List02 char(31),  @I_vUser_Defined_List03 char(31),  @I_vUser_Defined_List04 char(31),  @I_vUser_Defined_List05 char(31),  @I_vUser_Defined_Text01 char(31),  @I_vUser_Defined_Text02 char(31),  @I_vUser_Defined_Text03 char(31),  @I_vUser_Defined_Text04 char(31),  @I_vUser_Defined_Text05 char(31),  @I_vUser_Defined_Text06 char(31),  @I_vUser_Defined_Text07 char(31),  @I_vUser_Defined_Text08 char(31),  @I_vUser_Defined_Text09 char(31),  @I_vUser_Defined_Text10 char(31),  @I_vUser_Defined_Date01 datetime,  @I_vUser_Defined_Date02 datetime,  @I_vUser_Defined_Date03 datetime,  @I_vUser_Defined_Date04 datetime,  @I_vUser_Defined_Date05 datetime,  @I_vUser_Defined_Date06 datetime,  @I_vUser_Defined_Date07 datetime,  @I_vUser_Defined_Date08 datetime,  @I_vUser_Defined_Date09 datetime,  @I_vUser_Defined_Date10 datetime,  @I_vUser_Defined_Date11 datetime,  @I_vUser_Defined_Date12 datetime,  @I_vUser_Defined_Date13 datetime,  @I_vUser_Defined_Date14 datetime,  @I_vUser_Defined_Date15 datetime,  @I_vUser_Defined_Date16 datetime,  @I_vUser_Defined_Date17 datetime,  @I_vUser_Defined_Date18 datetime,  @I_vUser_Defined_Date19 datetime,  @I_vUser_Defined_Date20 datetime,  @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int = NULL output,  @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopRctUserDefinedPost] TO [DYNGRP]
GO

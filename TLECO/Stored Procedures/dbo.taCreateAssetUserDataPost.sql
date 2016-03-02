SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetUserDataPost]  @I_vASSETID char(15),    @I_vASSETIDSUF  smallint,   @I_vUSRFIELD1 char(6),    @I_vUSRFIELD2 char(6),     @I_vUSRFIELD3 char(10),   @I_vUSRFIELD4  char(10),    @I_vUSRFIELD5 char(20),    @I_vUSRFIELD6   char(20),    @I_vUSRFIELD7   char(20),    @I_vUSRFIELD8   char(20),    @I_vUSRFIELD9   char(40),    @I_vUSRFIELD10  char(40),    @I_vUSRFIELD11  numeric(19,5),   @I_vUSRFIELD12  numeric(19,5),   @I_vUSRFIELD13  numeric(19,5),   @I_vUSRFIELD14  numeric(19,5),   @I_vUSRFIELD15  numeric(19,5),   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetUserDataPost] TO [DYNGRP]
GO

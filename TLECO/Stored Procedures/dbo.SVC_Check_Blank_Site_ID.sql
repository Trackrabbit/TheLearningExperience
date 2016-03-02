SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Blank_Site_ID] (  @SRVRECTYPE smallint,  @CALLNBR char(11),  @number integer output ) As  set nocount on  select @number = count(*) from SVC00203 where SRVRECTYPE = @SRVRECTYPE and  CALLNBR = @CALLNBR and LINITMTYP = 'P' and LOCNCODE = '' set nocount off return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Blank_Site_ID] TO [DYNGRP]
GO

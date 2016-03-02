SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_ISC_Customer_Addresses]  (  @CUSTNMBR char(15)  ) As  set nocount on  select ADRSCODE from RM00102 where CUSTNMBR = @CUSTNMBR return     
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Customer_Addresses] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Copy_Contract_Lines]  (@ADRSCODE  char(15),  @STRTDATE  datetime,  @CURRENTDATE datetime,  @CURRENTTIME datetime,  @OUTERROR integer OUTPUT) AS  declare   @USERID char(10),   @ENDDATE datetime,  @BILLENDDATE datetime  set NOCOUNT ON     
GO
GRANT EXECUTE ON  [dbo].[SVC_Copy_Contract_Lines] TO [DYNGRP]
GO

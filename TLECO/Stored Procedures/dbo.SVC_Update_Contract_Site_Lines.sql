SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Update_Contract_Site_Lines]  (@CONSTS int,   @CONTNBR char(11),  @CUSTNMBR char(15),  @ADRSCODE char(15),  @Contract_Length int,  @Contract_Period int,  @STRTDATE datetime,  @ENDDATE datetime  ) As  BEGIN   UPDATE SVC00601 WITH(ROWLOCK)  SET   Contract_Length = @Contract_Length,  Contract_Period = @Contract_Period,  STRTDATE = @STRTDATE,  ENDDATE = @ENDDATE  WHERE  CONSTS = @CONSTS AND  CONTNBR = @CONTNBR AND  CUSTNMBR = @CUSTNMBR AND  ADRSCODE = @ADRSCODE AND  BILSTAT = 0  END  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Contract_Site_Lines] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Update_Indirect_Labor]  @TECHID  char (11),  @QTYORDER numeric (19,5),  @STRTDATE  datetime,  @STRTTIME  datetime,  @ENDDATE  datetime,  @ENDTME  datetime,  @TRANSTME  char (7),  @Work_Type  char (11),  @ITEMDESC    char (51) AS declare @lineseq int declare @line int declare @OVERLAP int declare @MinDate datetime  exec smGetMinDate @MinDate output  select @line =  count (*) from SVC00203 where CALLNBR = @TECHID if @line>0  select @lineseq = (select max(LNITMSEQ) from SVC00203 where CALLNBR = @TECHID) + 1 else   select @lineseq = 1 if not exists (select * from SVC00203 where SRVRECTYPE = 0 and TECHID = @TECHID and STRTDATE=@STRTDATE and STRTTIME=@STRTTIME and ENDDATE=@ENDDATE and ENDTME = @ENDTME) BEGIN  exec SVC_Check_Labor_Overlap @TECHID,@lineseq,@STRTDATE,@STRTTIME,@ENDDATE,@ENDTME,@OVERLAP output  if @OVERLAP = 0   BEGIN  INSERT INTO SVC00203  VALUES   ( 0,  @TECHID,  0,  @lineseq ,  'L',  '',  @TECHID,  '',  '',  @ITEMDESC,  '',  '',  @QTYORDER,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  @STRTDATE,  @STRTTIME,  @ENDDATE,  @ENDTME,  @TRANSTME,  '',  '',  0.0,  0,  '',  0,  0.0,  0.0,  0.0,  @MinDate,  '',  0.0,  0,  '',  0,   0,  0,  0,  '',  0,  '',  0,  @Work_Type,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  '' , 0,'', 0,0)  END END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Indirect_Labor] TO [DYNGRP]
GO

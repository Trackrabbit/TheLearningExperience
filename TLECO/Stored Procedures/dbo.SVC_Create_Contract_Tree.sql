SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Contract_Tree]  (@TableName char(40),  @CONSTS smallint,  @CUSTNMBR char(15),  @Type integer) AS declare @Quote char(1),@CALLTYPE char(1) select @Quote = CHAR(39),@CALLTYPE = CONVERT(varchar(1),@CONSTS) if @Type = 0   exec ('set IDENTITY_INSERT ' + @TableName + ' on insert into ' + @TableName +   ' (CUSTNMBR,CONSTS,CONTNBR,ADRSCODE,DSCRIPTN,DEX_ROW_ID) select distinct ' +   ' a.CUSTNMBR,a.CONSTS,a.CONTNBR ,a.ADRSCODE,' + @Quote + @Quote + ',a.DEX_ROW_ID from SVC00600 a ' +   ' where a.CONSTS = ' + @CALLTYPE + ' order by a.CUSTNMBR,a.ADRSCODE,a.CONTNBR set IDENTITY_INSERT ' + @TableName + ' off ') else if @Type = 1   exec ('set IDENTITY_INSERT ' + @TableName + ' on insert into ' + @TableName +   ' (CUSTNMBR,CONSTS,CONTNBR,ADRSCODE,DSCRIPTN,DEX_ROW_ID) select distinct ' +   ' a.CUSTNMBR,a.CONSTS,a.CONTNBR ,a.ADRSCODE,' + @Quote + @Quote + ',a.DEX_ROW_ID from SVC00601 a ' +   ' where a.CONSTS = ' + @CALLTYPE + ' AND a.CUSTNMBR = ' + @Quote + @CUSTNMBR +  @Quote +   ' order by a.CUSTNMBR,a.ADRSCODE,a.CONTNBR  set IDENTITY_INSERT ' + @TableName + ' off ')    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Contract_Tree] TO [DYNGRP]
GO

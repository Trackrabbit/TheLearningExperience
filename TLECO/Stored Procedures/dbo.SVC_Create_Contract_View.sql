SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Contract_View] (@TableName char(40),  @CONSTS smallint,  @CONTNBR char(15),  @ADRSCODE char(15)) AS declare @Quote char(1),@CALLTYPE char(1) select @Quote = CHAR(39),@CALLTYPE = CONVERT(varchar(1),@CONSTS) exec ('set IDENTITY_INSERT ' + @TableName + ' on insert into ' + @TableName + '(LNSEQNBR,ITEMNMBR,SERLNMBR,DSCRIPTN,QUANTITY,TOTAL,WARRSTART,WARREND,CONFGREF,Rev_Level,CNFGLVL,CNFGSEQ,DEX_ROW_ID) select ' +   ' a.LNSEQNBR,a.ITEMNMBR,a.SERLNMBR,a.DSCRIPTN,a.QUANTITY,a.TOTAL,IsNull(b.WARRSTART,' + @Quote + '01/01/1900 00:00:00' + @Quote + '),isNull(b.WARREND,' + @Quote + '01/01/1900 00:00:00' + @Quote + '),a.CONFGREF,' + @Quote + @Quote + ',0,0,a.DEX_ROW_ID from SVC00601 a LEFT OUTER JOIN SVC00300 b on (a.EQUIPID = b.EQUIPID)' +   ' where a.CONSTS = ' + @CALLTYPE + ' and a.CONTNBR = ' + @Quote + @CONTNBR + @Quote + 'and a.ADRSCODE = ' + @Quote + @ADRSCODE + @Quote + ' order by a.LNSEQNBR  set IDENTITY_INSERT ' + @TableName + ' off ')    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Contract_View] TO [DYNGRP]
GO

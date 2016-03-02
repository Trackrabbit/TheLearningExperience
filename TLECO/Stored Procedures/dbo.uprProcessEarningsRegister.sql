SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessEarningsRegister]   @IN_EarningsTemp   varchar(255) = NULL,   @sEmployeeID varchar(15),  @eEmployeeID varchar(15),  @sCheckDate datetime,  @eCheckDate datetime,  @O_iErrorState     int output  AS  DECLARE   @ALIGN varchar(25),   @REPRINT varchar(25),  @EMPLOYID varchar(15),  @GRWGPRN decimal(19,5),  @Charged_Tips decimal(19,5),  @FCASWPR decimal(19,5),  @FICAMWPR decimal(19,5),  @FDWDGPRN decimal(19,5),  @NTWPYRN decimal(19,5),  @Reported_Tips decimal(19,5),  @FICSTPTX decimal(19,5),  @FICMTPTX decimal(19,5),  @FDTXTIPS decimal(19,5),  @ADVANCEPAY decimal(19,5),  @ADVANCEPAYBACK decimal(19,5),  @TOTALGROSS decimal(19,5),  @TOTALNET decimal(19,5),  @DEC1 decimal(19,5),  @DEC2 decimal(19,5),  @DEC3 decimal(19,5),  @DEC4 decimal(19,5),  @DEC5 decimal(19,5),  @DEC6 decimal(19,5),  @DEC7 decimal(19,5),  @DEC8 decimal(19,5),  @DEC9 decimal(19,5),  @DEC10 decimal(19,5),  @DEC11 decimal(19,5),   @DEC12 decimal(19,5),  @DEC13 decimal(19,5),  @DEC14 decimal(19,5),  @DEC15 decimal(19,5),  @DEC16 decimal(19,5),  @DEC17 decimal(19,5),  @DEC18 decimal(19,5),  @DEC19 decimal(19,5),  @DEC20 decimal(19,5),  @DEC21 decimal(19,5),  @DEC22 decimal(19,5),  @DEC23 decimal(19,5),   @DEC24 decimal(19,5),  @DEC25 decimal(19,5),  @DEC26 decimal(19,5),  @DEC27 decimal(19,5),  @DEC28 decimal(19,5),   @DEC29 decimal(19,5),  @COMMAND nvarchar(2000)  SELECT @ALIGN = 'ALIGNMENT'  SELECT @REPRINT =  'REPRINTED'  DECLARE table_cursor CURSOR FOR  SELECT EMPLOYID,SUM(GRWGPRN),SUM(Charged_Tips),SUM(FCASWPR),SUM(FICAMWPR),SUM(FDWDGPRN),SUM(NTWPYRN),  SUM(Reported_Tips),SUM(FICSTPTX),SUM(FICMTPTX),SUM(FDTXTIPS) FROM UPR30100 WHERE EMPLOYID BETWEEN @sEmployeeID AND @eEmployeeID AND CHEKDATE BETWEEN @sCheckDate AND @eCheckDate AND NOT(VOIDED = 1 AND Voided_by_Void_Checks = 0) AND EMPLOYID <> @ALIGN AND EMPLOYID <> @REPRINT GROUP BY EMPLOYID  OPEN table_cursor  FETCH NEXT FROM table_cursor INTO @EMPLOYID,@GRWGPRN,@Charged_Tips,@FCASWPR,@FICAMWPR,@FDWDGPRN,@NTWPYRN,@Reported_Tips,@FICSTPTX,@FICMTPTX,@FDTXTIPS  WHILE @@FETCH_STATUS = 0 BEGIN  SELECT @ADVANCEPAY = ISNULL(SUM(PAYADVNC),0.00)  FROM UPR30300   WHERE EMPLOYID = @EMPLOYID  AND CHEKDATE BETWEEN @sCheckDate AND @eCheckDate  AND PYRLRTYP = 1  AND PAYADVNC > 0.00   SELECT @ADVANCEPAYBACK = ISNULL(SUM(PAYADVNC),0.00)   FROM UPR30300   WHERE EMPLOYID = @EMPLOYID  AND CHEKDATE BETWEEN @sCheckDate AND @eCheckDate  AND PYRLRTYP = 1  AND PAYADVNC < 0.00   SELECT @TOTALGROSS = @GRWGPRN - @Charged_Tips - @ADVANCEPAY    SELECT @TOTALNET = @NTWPYRN -  @ADVANCEPAY - @ADVANCEPAYBACK   SELECT @COMMAND = N' INSERT INTO ' + @IN_EarningsTemp + ' (EMPLOYID, TMPERNAM_1, TMPERNAM_2, TMPERNAM_3, TMPERNAM_4, TMPERNAM_5, TMPERNAM_6, TMPERNAM_7,TMPERNAM_8, TMPERNAM_9, TMPERNAM_10, TMPERNAM_11,TMPERNAM_12, TMPERNAM_13, TMPERNAM_14, TMPERNAM_15,TMPERNAM_16, TMPERNAM_17, TMPERNAM_18,TMPERNAM_19,TMPERNAM_20, TMPERNAM_21, TMPERNAM_22, TMPERNAM_23,TMPERNAM_24, TMPERNAM_25, TMPERNAM_26,TMPERNAM_27,TMPERNAM_28,TMPERNAM_29,TMPERNAM_30, TMPERNAM_31, TMPERNAM_32,TMPERNAM_33,TMPERNAM_34, TMPERNAM_35, TMPERNAM_36,TMPERNAM_37,TMPERNAM_38, TMPERNAM_39 ) '  + '  VALUES ( @EMPLOYID, @TOTALGROSS, 0.00, 0.00, @FCASWPR,0.00, 0.00, @FICAMWPR,0.00, 0.00, @FDWDGPRN, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, @TOTALNET,  0.00, 0.00,@Charged_Tips, 0.00, 0.00, @Reported_Tips, 0.00, 0.00, @FICSTPTX, 0.00, 0.00, @FICMTPTX,  0.00, 0.00,@FDTXTIPS, 0.00, 0.00) '   exec sp_executesql @COMMAND,  N' @EMPLOYID varchar(15),  @TOTALGROSS decimal(19,5), @DEC1 decimal(19,5),@DEC2 decimal(19,5), @FCASWPR decimal(19,5), @DEC3 decimal(19,5),@DEC4 decimal(19,5),  @FICAMWPR decimal(19,5), @DEC5 decimal(19,5),@DEC6 decimal(19,5),   @FDWDGPRN decimal(19,5),  @DEC7 decimal(19,5),@DEC8 decimal(19,5), @DEC9 decimal(19,5),@DEC10 decimal(19,5), @DEC11 decimal(19,5),@DEC12 decimal(19,5), @DEC13 decimal(19,5),@DEC14 decimal(19,5), @DEC15 decimal(19,5),@DEC16 decimal(19,5), @DEC17 decimal(19,5),  @TOTALNET decimal(19,5), @DEC18 decimal(19,5),@DEC19 decimal(19,5),  @Charged_Tips  decimal(19,5), @DEC20 decimal(19,5),@DEC21 decimal(19,5), @Reported_Tips  decimal(19,5), @DEC22 decimal(19,5),@DEC23 decimal(19,5),  @FICSTPTX decimal(19,5), @DEC24 decimal(19,5),@DEC25 decimal(19,5),   @FICMTPTX decimal(19,5),  @DEC26 decimal(19,5),@DEC27 decimal(19,5),     @FDTXTIPS decimal(19,5), @DEC28 decimal(19,5),@DEC29 decimal(19,5)  ',   @EMPLOYID, @TOTALGROSS,0.00, 0.00, @FCASWPR,0.00, 0.00, @FICAMWPR,0.00, 0.00, @FDWDGPRN, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, @TOTALNET,  0.00, 0.00,@Charged_Tips, 0.00, 0.00, @Reported_Tips, 0.00, 0.00, @FICSTPTX, 0.00, 0.00, @FICMTPTX,  0.00, 0.00,@FDTXTIPS, 0.00, 0.00    FETCH NEXT FROM table_cursor  INTO @EMPLOYID,@GRWGPRN,@Charged_Tips,@FCASWPR,@FICAMWPR,@FDWDGPRN,@NTWPYRN,@Reported_Tips,@FICSTPTX,@FICMTPTX,@FDTXTIPS END  CLOSE table_cursor DEALLOCATE table_cursor  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessEarningsRegister] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[uprProcessEarningsRegister] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[uprProcessEarningsRegister] TO [rpt_power user]
GO

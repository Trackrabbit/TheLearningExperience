SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[GL_RolldownSegmentDescription]  @I_Segment_Number SMALLINT = NULL,  @I_Segment_ID VARCHAR(100) = NULL,  @I_OldDescription VARCHAR(100) = NULL,  @I_NewDescription VARCHAR(100) = NULL,  @O_iErrorState INT  = NULL  OUTPUT  AS  BEGIN  DECLARE  @AcctDescSep               VARCHAR(2),  @STMT_1                    VARCHAR(8000),  @STMT_Y                    VARCHAR(8000),  @STMT                      VARCHAR(8000),  @ColumName                 VARCHAR(20),  @i                         SMALLINT,  @MaxSegment                INTEGER  IF @@trancount = 0   BEGIN TRANSACTION   SELECT @i = 1,   @STMT='',  @STMT_1 ='',  @STMT_Y =''   SELECT @AcctDescSep = ACSEGSEP FROM DYNAMICS..SY01500 WHERE INTERID=DB_NAME()  SELECT @MaxSegment = COUNT(*)  FROM SY00300   SELECT @ColumName = 'ACTNUMBR_'+convert(varchar, @I_Segment_Number)  SELECT @I_NewDescription = REPLACE(@I_NewDescription,'''','''''')  SELECT @STMT = 'CREATE TABLE ##Temp1 (ACTINDX INTEGER '   WHILE @i<=@MaxSegment  BEGIN  SELECT @STMT = @STMT+ ' ,ACTNUMBR_' +convert(varchar,@i) +' VARCHAR(50) '  if @i=@MaxSegment  SELECT @STMT_1 = @STMT_1 + ' P1.ACTNUMBR_'+convert(varchar,@i)   ELSE  SELECT @STMT_1 = @STMT_1 + ' P1.ACTNUMBR_'+convert(varchar,@i) + ' +  ''' + CONVERT(varchar,@AcctDescSep) + ''' + '  SELECT @i =  @i+1  END   SELECT @STMT =@STMT+ ' )'   EXEC(@STMT)  SELECT @i =  1  SELECT @STMT = 'INSERT INTO ##Temp1 SELECT ACTINDX '  WHILE @i<=@MaxSegment  BEGIN  SELECT @STMT = @STMT + ', dbo.GetSegmentString (' +convert(varchar,@i) + ' , ACTDESCR ) '  SELECT @i =  @i+1   END   SELECT  @STMT =  @STMT + ' FROM GL00100  WHERE ' + @ColumName +' = '''+ @I_Segment_ID + ''''   EXEC (@STMT)   SELECT @STMT= 'UPDATE ##Temp1 SET ' + @ColumName +' = '''+ @I_NewDescription +''' WHERE '+ @ColumName +' = ''' + @I_OldDescription +''' OR '+ @ColumName +' = '''''  EXEC (@STMT)  SELECT @STMT= 'DELETE FROM ##Temp1 WHERE ' + @ColumName +' <> '''+ @I_NewDescription +''''  EXEC (@STMT)  SELECT @STMT = 'UPDATE  GL00100 SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END  SELECT @STMT = 'UPDATE  GL00100F1 SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END   SELECT @STMT = 'UPDATE  GL00100F2 SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END   SELECT @STMT = 'UPDATE  GL00100F3 SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END   SELECT @STMT = 'UPDATE  GL00100F4 SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END   SELECT @STMT = 'UPDATE  PJOURNAL  SET ACTDESCR = SUBSTRING(' + @STMT_1 + ',1,50) FROM GL00100 A JOIN  ##Temp1 P1 ON A.ACTINDX = P1.ACTINDX'  EXEC (@STMT)  IF @@ERROR <>0  BEGIN  ROLLBACK TRANSACTION  RETURN  END   DROP TABLE ##Temp1   COMMIT TRANSACTION  RETURN END   
GO
GRANT EXECUTE ON  [dbo].[GL_RolldownSegmentDescription] TO [DYNGRP]
GO

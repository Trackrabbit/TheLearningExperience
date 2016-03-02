SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[sm_Build_Period_Table] as  declare   @Entity_Number int,  @Last_Day_Year datetime,  @Header_Year smallint,  @History_Year tinyint,  @Period_Closed tinyint,  @Period_ID smallint,  @Period_Date datetime,  @Period_Name char(21),  @Setup_Year smallint,  @Prev_Period_Closed tinyint,  @Prev_Period_ID smallint,  @Prev_Period_Date datetime,  @Prev_Period_Name char(21),  @Prev_Setup_Year smallint,  @Period_Start_Date datetime,  @Period_End_Date datetime,  @Closing_Period tinyint,  @cGeneral_Entry char(55),  @cDBName char(5),  @iStatus int,  @iError int,  @O_iErrorState int select @cDBName = db_name()  exec    @iStatus = DYNAMICS..smGetConstantString   'TRX_SOURCE_GL_GENERAL_ENTRY',   @cGeneral_Entry output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) ) begin  select @O_iErrorState = 20956  return end  select  @Entity_Number = company.CMPANYID from  DYNAMICS..SY01500 company where  company.INTERID = (select db_name())  DECLARE Period_Header INSENSITIVE CURSOR for  select  periodhdr.YEAR1,  periodhdr.LSTFSCDY,  periodhdr.HISTORYR  from  SY40101  periodhdr  order by YEAR1  DECLARE Period_Setup INSENSITIVE CURSOR FOR  select  CLOSED,  PERIODID,  PERIODDT,  PERNAME,  YEAR1  from  SY40100  where  SERIES = 2  and ODESCTN = @cGeneral_Entry  order by YEAR1, PERIODID delete from #Period_Table  OPEN Period_Header OPEN Period_Setup  FETCH NEXT FROM Period_Header INTO  @Header_Year,  @Last_Day_Year,  @History_Year   FETCH NEXT FROM Period_Setup INTO   @Period_Closed,  @Period_ID,  @Period_Date,  @Period_Name,  @Setup_Year  while @@FETCH_STATUS = 0 begin   while @@FETCH_STATUS = 0  begin  select @Prev_Period_Closed  = @Period_Closed,  @Prev_Period_ID   = @Period_ID,  @Prev_Period_Date  = @Period_Date,  @Prev_Period_Name  = @Period_Name,  @Prev_Setup_Year  = @Setup_Year   FETCH NEXT FROM Period_Setup INTO  @Period_Closed,  @Period_ID,  @Period_Date,  @Period_Name,  @Setup_Year   if  @Period_Date = @Prev_Period_Date or  @@FETCH_STATUS <> 0 or  @Header_Year <> @Setup_Year  begin  select @Period_End_Date = @Last_Day_Year  end  else if @Prev_Period_ID = 0  begin  select @Period_End_Date = @Prev_Period_Date  end  else  begin  select @Period_End_Date = DATEADD(dd,-1, @Period_Date)  end   if @Prev_Period_ID = 0  begin  select @Period_Start_Date = @Prev_Period_Date  end  else if @Closing_Period = 1  begin  select @Period_Start_Date = @Prev_Period_Date  end  else   begin  select @Period_Start_Date = @Prev_Period_Date  end  insert into  #Period_Table  values (@Prev_Setup_Year,  @Prev_Period_ID,  @Period_Start_Date,  @Period_End_Date,  @Prev_Period_Closed)   select @Closing_Period = 0   if @Header_Year <> @Setup_Year  break   if @Period_Date = @Prev_Period_Date  begin  select @Closing_Period = 1  end  end  FETCH NEXT FROM Period_Header INTO @Header_Year,  @Last_Day_Year,  @History_Year  end  DEALLOCATE Period_Header DEALLOCATE Period_Setup   
GO
GRANT EXECUTE ON  [dbo].[sm_Build_Period_Table] TO [DYNGRP]
GO
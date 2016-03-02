CREATE TABLE [dbo].[eConnect_Out_Setup]
(
[QUEUEPATH] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUEUE_ENABLED] [int] NOT NULL,
[DOCTYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INSERT_ENABLED] [int] NOT NULL,
[UPDATE_ENABLED] [int] NOT NULL,
[DELETE_ENABLED] [int] NOT NULL,
[TABLENAME] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALIAS] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MAIN] [int] NOT NULL,
[PARENTLEVEL] [int] NOT NULL,
[ORDERBY] [int] NOT NULL,
[USERDEF1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQUIRED1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX6] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX7] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX8] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX9] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX10] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX11] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX12] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX13] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX14] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX15] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEXCNT] [int] NOT NULL,
[TRIGGER1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER6] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER7] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER8] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER9] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER10] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER11] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER12] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER13] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER14] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGER15] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRIGGERCNT] [int] NOT NULL,
[JOINTABLE] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN6] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN7] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN8] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN9] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOIN10] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO6] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO7] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO8] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO9] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOINTO10] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATACNT] [int] NOT NULL,
[DATA1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA3] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA4] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA5] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA6] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA7] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA8] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA9] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA10] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA11] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA12] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA13] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA14] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA15] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA16] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA17] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA18] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA19] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA20] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA21] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA22] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA23] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA24] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA25] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA26] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA27] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA28] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA29] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA30] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA31] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA32] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA33] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA34] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA35] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA36] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA37] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA38] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA39] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA40] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA41] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA42] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA43] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA44] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA45] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA46] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA47] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA48] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA49] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA50] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA51] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA52] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA53] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA54] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA55] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA56] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA57] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA58] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA59] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA60] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA61] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA62] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA63] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA64] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA65] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA66] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA67] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA68] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA69] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA70] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA71] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA72] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA73] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA74] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA75] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA76] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA77] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA78] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA79] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA80] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA81] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA82] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA83] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA84] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA85] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA86] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA87] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA88] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA89] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA90] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA91] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA92] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA93] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA94] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA95] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA96] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA97] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA98] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA99] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA100] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA101] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA102] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA103] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA104] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA105] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA106] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA107] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA108] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA109] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA110] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA111] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA112] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA113] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA114] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA115] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA116] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA117] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA118] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA119] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA120] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA121] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA122] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA123] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA124] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA125] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA126] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA127] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA128] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA129] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA130] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA131] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA132] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA133] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA134] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA135] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA136] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA137] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA138] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA139] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA140] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA141] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA142] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA143] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA144] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA145] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA146] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA147] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA148] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA149] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA150] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA151] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA152] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA153] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA154] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA155] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA156] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA157] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA158] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA159] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA160] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA161] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA162] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA163] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA164] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA165] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA166] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA167] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA168] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA169] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA170] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA171] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA172] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA173] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA174] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA175] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA176] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA177] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA178] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA179] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATA180] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[eConnectOutSetupDelete] ON [dbo].[eConnect_Out_Setup] FOR DELETE AS  set nocount on declare @Action int,  @TableName varchar(50),  @O_iErrorState int,  @Main int,  @DocType varchar(50),  @Alias varchar(50),  @proc varchar(150),  @Required1 varchar(30)  select  @Action=0,  @TableName = '',  @Main = 0,  @DocType = '',  @Alias = '',  @proc = '',  @Required1 = ''   declare T_cursor CURSOR for select TABLENAME,MAIN,DOCTYPE,ALIAS  from deleted order by DOCTYPE   set nocount on  OPEN T_cursor  FETCH NEXT FROM T_cursor INTO  @TableName,@Main,@DocType,@Alias  WHILE (@@FETCH_STATUS <> -1)  begin   exec eConnectOutTriggers @TableName,0,@DocType,@Alias,'',1,@O_iErrorState = @O_iErrorState output  exec eConnectOutTriggers @TableName,0,@DocType,@Alias,'',2,@O_iErrorState = @O_iErrorState output  exec eConnectOutTriggers @TableName,0,@DocType,@Alias,'',3,@O_iErrorState = @O_iErrorState output   set @proc = 'taRequester' + rtrim(@DocType) + ltrim(str(0))   if exists (select 1 from dbo.sysobjects (nolock) where id = Object_id(rtrim(@proc)) and type = 'P')  begin  set @proc = 'drop procedure ' + @proc  exec (@proc)  end   set @proc = 'taRequester' + rtrim(@DocType) + ltrim(str(1))   if exists (select 1 from dbo.sysobjects (nolock) where id = Object_id(rtrim(@proc)) and type = 'P')  begin  set @proc = 'drop procedure ' + @proc  exec (@proc)  end   set @proc = 'taRequester' + rtrim(@DocType) + ltrim(str(2))   if exists (select 1 from dbo.sysobjects (nolock) where id = Object_id(rtrim(@proc)) and type = 'P')  begin  set @proc = 'drop procedure ' + @proc  exec (@proc)  end   FETCH NEXT FROM T_cursor INTO @TableName,@Main,@DocType,@Alias  end  DEALLOCATE T_cursor   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[eConnectOutSetupEnabled] ON [dbo].[eConnect_Out_Setup] FOR INSERT, UPDATE  AS  set nocount on declare @Action int,  @TableName varchar(50),  @O_iErrorState int,  @Main int,  @DocType varchar(50),  @Alias varchar(50),  @proc varchar(150),  @Required1 varchar(30)  select  @Action=0,  @TableName = '',  @Main = 0,  @DocType = '',  @Alias = '',  @proc = '',  @Required1 = ''  If UPDATE(INSERT_ENABLED) BEGIN  declare T_cursor CURSOR for select INSERT_ENABLED,TABLENAME,MAIN,DOCTYPE,ALIAS,REQUIRED1  from inserted order by DOCTYPE   set nocount on  OPEN T_cursor  FETCH NEXT FROM T_cursor INTO  @Action,@TableName,@Main,@DocType,@Alias,@Required1  WHILE (@@FETCH_STATUS <> -1)  begin   exec eConnectOutTriggers @TableName,@Action,@DocType,@Alias,@Required1,1,@O_iErrorState = @O_iErrorState output   FETCH NEXT FROM T_cursor INTO @Action,@TableName,@Main,@DocType,@Alias,@Required1  end  DEALLOCATE T_cursor END  If UPDATE(UPDATE_ENABLED) BEGIN  declare T_cursor CURSOR for select UPDATE_ENABLED,TABLENAME,MAIN,DOCTYPE,ALIAS,REQUIRED1  from inserted order by DOCTYPE   set nocount on  OPEN T_cursor  FETCH NEXT FROM T_cursor INTO  @Action,@TableName,@Main,@DocType,@Alias,@Required1  WHILE (@@FETCH_STATUS <> -1)  begin   exec eConnectOutTriggers @TableName,@Action,@DocType,@Alias,@Required1,2,@O_iErrorState = @O_iErrorState output   FETCH NEXT FROM T_cursor INTO @Action,@TableName,@Main,@DocType,@Alias,@Required1  end  DEALLOCATE T_cursor END  If UPDATE(DELETE_ENABLED) BEGIN  declare T_cursor CURSOR for select DELETE_ENABLED,TABLENAME,MAIN,DOCTYPE,ALIAS,REQUIRED1  from inserted order by DOCTYPE   set nocount on  OPEN T_cursor  FETCH NEXT FROM T_cursor INTO  @Action,@TableName,@Main,@DocType,@Alias,@Required1  WHILE (@@FETCH_STATUS <> -1)  begin   exec eConnectOutTriggers @TableName,@Action,@DocType,@Alias,@Required1,3,@O_iErrorState = @O_iErrorState output   FETCH NEXT FROM T_cursor INTO @Action,@TableName,@Main,@DocType,@Alias,@Required1  end  DEALLOCATE T_cursor END    
GO
ALTER TABLE [dbo].[eConnect_Out_Setup] ADD CONSTRAINT [PK_eConnect_Out_Setup] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [MAIN], [TABLENAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[QUEUEPATH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[QUEUE_ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[INSERT_ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[UPDATE_ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[DELETE_ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[ALIAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[MAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[PARENTLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[ORDERBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[USERDEF3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[USERDEF4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[USERDEF5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[REQUIRED1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[INDEX15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[INDEXCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[TRIGGER15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[TRIGGERCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOIN10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[JOINTO10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[eConnect_Out_Setup].[DATACNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA42]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA43]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA44]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA45]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA46]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA47]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA48]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA49]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA50]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA51]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA52]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA53]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA54]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA55]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA56]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA57]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA58]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA59]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA60]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA61]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA62]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA63]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA64]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA65]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA66]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA67]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA68]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA69]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA70]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA71]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA72]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA73]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA74]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA75]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA76]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA77]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA78]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA79]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA80]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA81]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA82]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA83]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA84]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA85]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA86]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA87]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA88]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA89]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA90]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA91]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA92]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA93]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA94]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA95]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA96]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA97]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA98]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA99]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA100]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA101]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA102]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA103]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA104]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA105]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA106]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA107]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA108]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA109]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA110]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA111]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA112]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA113]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA114]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA115]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA116]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA117]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA118]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA119]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA120]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA121]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA122]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA123]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA124]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA125]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA126]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA127]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA128]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA129]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA130]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA131]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA132]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA133]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA134]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA135]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA136]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA137]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA138]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA139]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA140]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA141]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA142]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA143]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA144]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA145]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA146]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA147]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA148]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA149]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA150]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA151]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA152]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA153]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA154]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA155]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA156]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA157]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA158]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA159]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA160]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA161]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA162]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA163]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA164]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA165]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA166]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA167]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA168]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA169]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA170]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA171]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA172]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA173]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA174]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA175]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA176]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA177]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA178]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA179]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[eConnect_Out_Setup].[DATA180]'
GO
GRANT REFERENCES ON  [dbo].[eConnect_Out_Setup] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[eConnect_Out_Setup] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[eConnect_Out_Setup] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[eConnect_Out_Setup] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[eConnect_Out_Setup] TO [DYNGRP]
GO

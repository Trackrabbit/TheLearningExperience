CREATE TABLE [dbo].[FA45000]
(
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[REPORTID] [smallint] NOT NULL,
[FAREPTNAME] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBY] [smallint] NOT NULL,
[Sort_By_Value] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BOOKINDX] [int] NOT NULL,
[BOOKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRFISCALYR] [smallint] NOT NULL,
[Begin_Current_Fiscal_Yr] [datetime] NOT NULL,
[End_Current_Fiscal_Year] [datetime] NOT NULL,
[Second_Book_Index] [int] NOT NULL,
[Second_Book_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Current_Fiscal_Year_2] [smallint] NOT NULL,
[Second_Begin_Current_FY] [datetime] NOT NULL,
[Second_End_Current_FY] [datetime] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[RETIRED] [tinyint] NOT NULL,
[PARTIALOPEN] [tinyint] NOT NULL,
[Multicurrency_Information] [tinyint] NOT NULL,
[In_Detail] [tinyint] NOT NULL,
[Only_Not_Interfaced] [tinyint] NOT NULL,
[Start_Master_Asset_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Master_Asset_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Asset_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Asset_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Asset_ID_Suffix] [smallint] NOT NULL,
[End_Asset_ID_Suffix] [smallint] NOT NULL,
[Start_Asset_Description] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Asset_Description] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Structure_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Structure_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_YTD_Depreciation] [numeric] (19, 5) NOT NULL,
[End_YTD_Depreciation] [numeric] (19, 5) NOT NULL,
[Start_LTD_Depreciation] [numeric] (19, 5) NOT NULL,
[End_LTD_Depreciation] [numeric] (19, 5) NOT NULL,
[Start_Net_Book_Value] [numeric] (19, 5) NOT NULL,
[End_Net_Book_Value] [numeric] (19, 5) NOT NULL,
[SSRCEDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRCDC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_GL_Account_Index] [int] NOT NULL,
[End_GL_Account_Index] [int] NOT NULL,
[Start_FA_Year] [smallint] NOT NULL,
[End_FA_Year] [smallint] NOT NULL,
[Start_FA_Period] [smallint] NOT NULL,
[End_FA_Period] [smallint] NOT NULL,
[Start_Property_Type] [smallint] NOT NULL,
[End_Property_Type] [smallint] NOT NULL,
[Start_Asset_Type] [smallint] NOT NULL,
[End_Asset_Type] [smallint] NOT NULL,
[Start_Asset_Quantity] [int] NOT NULL,
[End_Asset_Quantity] [int] NOT NULL,
[Start_Original_Life_Year] [smallint] NOT NULL,
[End_Original_Life_Years] [smallint] NOT NULL,
[Start_Original_Life_Days] [smallint] NOT NULL,
[End_Original_Life_Days] [smallint] NOT NULL,
[Start_Remaining_Life_Yea] [smallint] NOT NULL,
[End_Remaining_Life_Years] [smallint] NOT NULL,
[Start_Remaining_Life_Day] [smallint] NOT NULL,
[End_Remaining_Life_Days] [smallint] NOT NULL,
[Start_Depr_Method] [smallint] NOT NULL,
[End_Depreciation_Method] [smallint] NOT NULL,
[Start_Averaging_Conventi] [smallint] NOT NULL,
[End_Averaging_Convention] [smallint] NOT NULL,
[Start_Amortization_Code] [smallint] NOT NULL,
[End_Amortization_Code] [smallint] NOT NULL,
[Start_Retirement_Type] [smallint] NOT NULL,
[End_Retirement_Type] [smallint] NOT NULL,
[Start_Trx_Acct_Type] [smallint] NOT NULL,
[End_Trx_Acct_Type] [smallint] NOT NULL,
[Start_Cost_Basis] [numeric] (19, 5) NOT NULL,
[End_Cost_Basis] [numeric] (19, 5) NOT NULL,
[Start_Fiscal_Year_Added] [smallint] NOT NULL,
[End_Fiscal_Year_Added] [smallint] NOT NULL,
[Start_Place_in_Service] [datetime] NOT NULL,
[End_Place_in_Service] [datetime] NOT NULL,
[Start_PIS_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_PIS_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Acquisition_Date] [datetime] NOT NULL,
[End_Acquisition_Date] [datetime] NOT NULL,
[Start_Acq_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Acq_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Date_Added] [datetime] NOT NULL,
[End_Date_Added] [datetime] NOT NULL,
[Start_Date_Added_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Date_Added_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Fully_Depr_Date] [datetime] NOT NULL,
[End_Fully_Depr_Date] [datetime] NOT NULL,
[Start_Fully_DTD_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Fully_DTD_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Retirement_Date] [datetime] NOT NULL,
[End_Retirement_Date] [datetime] NOT NULL,
[Start_Ret_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Ret_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Transfer_Date] [datetime] NOT NULL,
[End_Transfer_Date] [datetime] NOT NULL,
[Start_Transfer_Date_Toke] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Transfer_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Switchover_Date] [datetime] NOT NULL,
[End_Switchover_Date] [datetime] NOT NULL,
[Start_Switch_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Switch_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_GL_Intf_TRX_Date] [datetime] NOT NULL,
[End_GL_Intf_TRX_Date] [datetime] NOT NULL,
[Start_GL_Intf_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_GL_Intf_Date_Token] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FISCALYEAR] [smallint] NOT NULL,
[PROJFROM] [datetime] NOT NULL,
[PROJTO] [datetime] NOT NULL,
[FA_Depreciation_As_Of] [smallint] NOT NULL,
[FA_Depreciation_As_Of_Dt] [datetime] NOT NULL,
[FA_Calc_With_Reset_Amts] [tinyint] NOT NULL,
[FA_Display_Reset_Amounts] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Begin_C__5ACF527F] CHECK ((datepart(hour,[Begin_Current_Fiscal_Yr])=(0) AND datepart(minute,[Begin_Current_Fiscal_Yr])=(0) AND datepart(second,[Begin_Current_Fiscal_Yr])=(0) AND datepart(millisecond,[Begin_Current_Fiscal_Yr])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Acq__5BC376B8] CHECK ((datepart(hour,[End_Acquisition_Date])=(0) AND datepart(minute,[End_Acquisition_Date])=(0) AND datepart(second,[End_Acquisition_Date])=(0) AND datepart(millisecond,[End_Acquisition_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Cur__5CB79AF1] CHECK ((datepart(hour,[End_Current_Fiscal_Year])=(0) AND datepart(minute,[End_Current_Fiscal_Year])=(0) AND datepart(second,[End_Current_Fiscal_Year])=(0) AND datepart(millisecond,[End_Current_Fiscal_Year])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Dat__5DABBF2A] CHECK ((datepart(hour,[End_Date_Added])=(0) AND datepart(minute,[End_Date_Added])=(0) AND datepart(second,[End_Date_Added])=(0) AND datepart(millisecond,[End_Date_Added])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Ful__5E9FE363] CHECK ((datepart(hour,[End_Fully_Depr_Date])=(0) AND datepart(minute,[End_Fully_Depr_Date])=(0) AND datepart(second,[End_Fully_Depr_Date])=(0) AND datepart(millisecond,[End_Fully_Depr_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_GL___5F94079C] CHECK ((datepart(hour,[End_GL_Intf_TRX_Date])=(0) AND datepart(minute,[End_GL_Intf_TRX_Date])=(0) AND datepart(second,[End_GL_Intf_TRX_Date])=(0) AND datepart(millisecond,[End_GL_Intf_TRX_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Pla__60882BD5] CHECK ((datepart(hour,[End_Place_in_Service])=(0) AND datepart(minute,[End_Place_in_Service])=(0) AND datepart(second,[End_Place_in_Service])=(0) AND datepart(millisecond,[End_Place_in_Service])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Ret__617C500E] CHECK ((datepart(hour,[End_Retirement_Date])=(0) AND datepart(minute,[End_Retirement_Date])=(0) AND datepart(second,[End_Retirement_Date])=(0) AND datepart(millisecond,[End_Retirement_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Swi__62707447] CHECK ((datepart(hour,[End_Switchover_Date])=(0) AND datepart(minute,[End_Switchover_Date])=(0) AND datepart(second,[End_Switchover_Date])=(0) AND datepart(millisecond,[End_Switchover_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__End_Tra__63649880] CHECK ((datepart(hour,[End_Transfer_Date])=(0) AND datepart(minute,[End_Transfer_Date])=(0) AND datepart(second,[End_Transfer_Date])=(0) AND datepart(millisecond,[End_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__FA_Depr__6458BCB9] CHECK ((datepart(hour,[FA_Depreciation_As_Of_Dt])=(0) AND datepart(minute,[FA_Depreciation_As_Of_Dt])=(0) AND datepart(second,[FA_Depreciation_As_Of_Dt])=(0) AND datepart(millisecond,[FA_Depreciation_As_Of_Dt])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__PROJFRO__654CE0F2] CHECK ((datepart(hour,[PROJFROM])=(0) AND datepart(minute,[PROJFROM])=(0) AND datepart(second,[PROJFROM])=(0) AND datepart(millisecond,[PROJFROM])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__PROJTO__6641052B] CHECK ((datepart(hour,[PROJTO])=(0) AND datepart(minute,[PROJTO])=(0) AND datepart(second,[PROJTO])=(0) AND datepart(millisecond,[PROJTO])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Second___67352964] CHECK ((datepart(hour,[Second_Begin_Current_FY])=(0) AND datepart(minute,[Second_Begin_Current_FY])=(0) AND datepart(second,[Second_Begin_Current_FY])=(0) AND datepart(millisecond,[Second_Begin_Current_FY])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Second___68294D9D] CHECK ((datepart(hour,[Second_End_Current_FY])=(0) AND datepart(minute,[Second_End_Current_FY])=(0) AND datepart(second,[Second_End_Current_FY])=(0) AND datepart(millisecond,[Second_End_Current_FY])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_A__691D71D6] CHECK ((datepart(hour,[Start_Acquisition_Date])=(0) AND datepart(minute,[Start_Acquisition_Date])=(0) AND datepart(second,[Start_Acquisition_Date])=(0) AND datepart(millisecond,[Start_Acquisition_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_D__6A11960F] CHECK ((datepart(hour,[Start_Date_Added])=(0) AND datepart(minute,[Start_Date_Added])=(0) AND datepart(second,[Start_Date_Added])=(0) AND datepart(millisecond,[Start_Date_Added])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_F__6B05BA48] CHECK ((datepart(hour,[Start_Fully_Depr_Date])=(0) AND datepart(minute,[Start_Fully_Depr_Date])=(0) AND datepart(second,[Start_Fully_Depr_Date])=(0) AND datepart(millisecond,[Start_Fully_Depr_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_G__6BF9DE81] CHECK ((datepart(hour,[Start_GL_Intf_TRX_Date])=(0) AND datepart(minute,[Start_GL_Intf_TRX_Date])=(0) AND datepart(second,[Start_GL_Intf_TRX_Date])=(0) AND datepart(millisecond,[Start_GL_Intf_TRX_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_P__6CEE02BA] CHECK ((datepart(hour,[Start_Place_in_Service])=(0) AND datepart(minute,[Start_Place_in_Service])=(0) AND datepart(second,[Start_Place_in_Service])=(0) AND datepart(millisecond,[Start_Place_in_Service])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_R__6DE226F3] CHECK ((datepart(hour,[Start_Retirement_Date])=(0) AND datepart(minute,[Start_Retirement_Date])=(0) AND datepart(second,[Start_Retirement_Date])=(0) AND datepart(millisecond,[Start_Retirement_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_S__6ED64B2C] CHECK ((datepart(hour,[Start_Switchover_Date])=(0) AND datepart(minute,[Start_Switchover_Date])=(0) AND datepart(second,[Start_Switchover_Date])=(0) AND datepart(millisecond,[Start_Switchover_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [CK__FA45000__Start_T__6FCA6F65] CHECK ((datepart(hour,[Start_Transfer_Date])=(0) AND datepart(minute,[Start_Transfer_Date])=(0) AND datepart(second,[Start_Transfer_Date])=(0) AND datepart(millisecond,[Start_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[FA45000] ADD CONSTRAINT [PKFA45000] PRIMARY KEY CLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[FAREPTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Sort_By_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[BOOKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[CURRFISCALYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Begin_Current_Fiscal_Yr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Current_Fiscal_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Second_Book_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Second_Book_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Current_Fiscal_Year_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Second_Begin_Current_FY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Second_End_Current_FY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[RETIRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[PARTIALOPEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Multicurrency_Information]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[In_Detail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Only_Not_Interfaced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Master_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Master_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Asset_ID_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Asset_ID_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Asset_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Asset_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Structure_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Structure_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[STTCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[ENDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[STTLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[ENDLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[Start_YTD_Depreciation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[End_YTD_Depreciation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[Start_LTD_Depreciation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[End_LTD_Depreciation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[Start_Net_Book_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[End_Net_Book_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[SSRCEDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[ENDSRCDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_GL_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_GL_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_FA_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_FA_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_FA_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_FA_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Property_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Property_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Asset_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Asset_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Asset_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Asset_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Original_Life_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Original_Life_Years]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Original_Life_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Original_Life_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Remaining_Life_Yea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Remaining_Life_Years]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Remaining_Life_Day]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Remaining_Life_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Depr_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Depreciation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Averaging_Conventi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Averaging_Convention]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Amortization_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Amortization_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Retirement_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Retirement_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Trx_Acct_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Trx_Acct_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[Start_Cost_Basis]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA45000].[End_Cost_Basis]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[Start_Fiscal_Year_Added]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[End_Fiscal_Year_Added]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Place_in_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Place_in_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_PIS_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_PIS_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Acquisition_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Acquisition_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Acq_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Acq_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Date_Added]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Date_Added]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Date_Added_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Date_Added_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Fully_Depr_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Fully_Depr_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Fully_DTD_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Fully_DTD_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Retirement_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Retirement_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Ret_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Ret_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Transfer_Date_Toke]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Transfer_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_Switchover_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_Switchover_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_Switch_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_Switch_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[Start_GL_Intf_TRX_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[End_GL_Intf_TRX_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[Start_GL_Intf_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[End_GL_Intf_Date_Token]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[STBCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA45000].[ENDBNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[FISCALYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[PROJFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[PROJTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[FA_Depreciation_As_Of]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA45000].[FA_Depreciation_As_Of_Dt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[FA_Calc_With_Reset_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA45000].[FA_Display_Reset_Amounts]'
GO
GRANT SELECT ON  [dbo].[FA45000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA45000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA45000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA45000] TO [DYNGRP]
GO

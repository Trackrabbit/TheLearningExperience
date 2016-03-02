CREATE TABLE [dbo].[POP40100]
(
[INDEX1] [smallint] NOT NULL,
[PO_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POFORMAT] [smallint] NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Receipt_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[POHIST] [tinyint] NOT NULL,
[RCPTHIST] [tinyint] NOT NULL,
[DISTHIST] [tinyint] NOT NULL,
[DSPLYITM] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[Number_Of_Lines] [smallint] NOT NULL,
[POPALWOP_1] [tinyint] NOT NULL,
[POPALWOP_2] [tinyint] NOT NULL,
[POPALWOP_3] [tinyint] NOT NULL,
[POPALWOP_4] [tinyint] NOT NULL,
[POPALWOP_5] [tinyint] NOT NULL,
[POPPSWRD_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPPSWRD_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPPSWRD_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPPSWRD_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPPSWRD_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFAULTSITEMETHOD] [smallint] NOT NULL,
[ALLOWHOLDEDIT] [tinyint] NOT NULL,
[AUTOHOLD] [tinyint] NOT NULL,
[SearchPOQtysFromSO] [tinyint] NOT NULL,
[TransferLineComments] [tinyint] NOT NULL,
[Purchase_Non_IV_Taxable] [smallint] NOT NULL,
[Purchase_Freight_Taxable] [smallint] NOT NULL,
[Purchase_Misc_Taxable] [smallint] NOT NULL,
[NONIVSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USEADVTX] [smallint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt01] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt02] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt03] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt04] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt05] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt06] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt07] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt08] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt09] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt10] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt11] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt12] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt13] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt14] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt15] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt16] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt17] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt18] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt19] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt20] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt21] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt22] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt23] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt24] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt25] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt26] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt27] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt28] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt29] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt30] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt31] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt32] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt33] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt34] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Prompt35] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FreightTaxSchedNoteIdx] [numeric] (19, 5) NOT NULL,
[MiscTaxSchedNoteIdx] [numeric] (19, 5) NOT NULL,
[NonIVTaxSchedNoteIdx] [numeric] (19, 5) NOT NULL,
[SingleTaxSchedNoteIdx] [numeric] (19, 5) NOT NULL,
[ReplenishmentLevel] [smallint] NOT NULL,
[POPOrderMethod] [smallint] NOT NULL,
[MasterLocationCode] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPVendorSelection] [smallint] NOT NULL,
[POPPricingSelection] [smallint] NOT NULL,
[IncludeAllocations] [tinyint] NOT NULL,
[IncludeBackorders] [tinyint] NOT NULL,
[IncludeRequisitions] [tinyint] NOT NULL,
[RETORIGTAX] [tinyint] NOT NULL,
[ONEPOPERADDR] [tinyint] NOT NULL,
[CALCRELDT] [tinyint] NOT NULL,
[Default_Document_Date] [smallint] NOT NULL,
[UseQtyOverageTolerance] [tinyint] NOT NULL,
[UseQtyShortageTolerance] [tinyint] NOT NULL,
[QtyOverTolerancePercent] [int] NOT NULL,
[QtyShortTolerancePercent] [int] NOT NULL,
[AllowPOPrepayments] [tinyint] NOT NULL,
[CreateManualPrepayment] [tinyint] NOT NULL,
[PrepaymentPassword] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PrepaymentAccountIndex] [int] NOT NULL,
[RequisitionCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPRequisitionNumber] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RequisitionMaintainHist] [tinyint] NOT NULL,
[RequisitionDefDocDate] [smallint] NOT NULL,
[RequisitionDefSiteMethod] [smallint] NOT NULL,
[RequisitionVendorSelect] [smallint] NOT NULL,
[RequisitionCostSelection] [smallint] NOT NULL,
[ReqCreateOnePOPerAddress] [tinyint] NOT NULL,
[ReqTransferLineComments] [tinyint] NOT NULL,
[SearchPOQtysFromRequisit] [tinyint] NOT NULL,
[Req_Hdr_UD_Prompt1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Req_Hdr_UD_Prompt2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Req_Line_UD_Prompt1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Req_Line_UD_Prompt2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP40100] ADD CONSTRAINT [CK__POP40100__CREATD__5B0F7B6B] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[POP40100] ADD CONSTRAINT [CK__POP40100__MODIFD__5C039FA4] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[POP40100] ADD CONSTRAINT [PKPOP40100] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[PO_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POFORMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[Receipt_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RCPTHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[DISTHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[DSPLYITM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP40100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP40100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[Number_Of_Lines]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPALWOP_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPALWOP_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPALWOP_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPALWOP_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPALWOP_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPPSWRD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPPSWRD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPPSWRD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPPSWRD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPPSWRD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[DEFAULTSITEMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[ALLOWHOLDEDIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[AUTOHOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[SearchPOQtysFromSO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[TransferLineComments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[Purchase_Non_IV_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[Purchase_Freight_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[Purchase_Misc_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[NONIVSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[USEADVTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt06]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt07]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt08]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt09]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[User_Defined_Prompt35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP40100].[FreightTaxSchedNoteIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP40100].[MiscTaxSchedNoteIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP40100].[NonIVTaxSchedNoteIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP40100].[SingleTaxSchedNoteIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[ReplenishmentLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPOrderMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[MasterLocationCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPVendorSelection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[POPPricingSelection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[IncludeAllocations]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[IncludeBackorders]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[IncludeRequisitions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RETORIGTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[ONEPOPERADDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[CALCRELDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[Default_Document_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[UseQtyOverageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[UseQtyShortageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[QtyOverTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[QtyShortTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[AllowPOPrepayments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[CreateManualPrepayment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[PrepaymentPassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[PrepaymentAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[RequisitionCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[POPRequisitionNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RequisitionMaintainHist]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RequisitionDefDocDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RequisitionDefSiteMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RequisitionVendorSelect]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[RequisitionCostSelection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[ReqCreateOnePOPerAddress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[ReqTransferLineComments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40100].[SearchPOQtysFromRequisit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[Req_Hdr_UD_Prompt1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[Req_Hdr_UD_Prompt2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[Req_Line_UD_Prompt1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40100].[Req_Line_UD_Prompt2]'
GO
GRANT SELECT ON  [dbo].[POP40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP40100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP40100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP40100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP40100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP40100] TO [RAPIDGRP]
GO

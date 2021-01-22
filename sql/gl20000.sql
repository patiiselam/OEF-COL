CREATE TABLE [dbo].[GL20000](
	[OPENYEAR] [smallint] NOT NULL,
	[JRNENTRY] [int] NOT NULL,
	[RCTRXSEQ] [numeric](19, 5) NOT NULL,
	[SOURCDOC] [char](11) NOT NULL,
	[REFRENCE] [char](31) NOT NULL,
	[DSCRIPTN] [char](31) NOT NULL,
	[TRXDATE] [datetime] NOT NULL,
	[TRXSORCE] [char](13) NOT NULL,
	[ACTINDX] [int] NOT NULL,
	[POLLDTRX] [tinyint] NOT NULL,
	[LASTUSER] [char](15) NOT NULL,
	[LSTDTEDT] [datetime] NOT NULL,
	[USWHPSTD] [char](15) NOT NULL,
	[ORGNTSRC] [char](15) NOT NULL,
	[ORGNATYP] [smallint] NOT NULL,
	[QKOFSET] [smallint] NOT NULL,
	[SERIES] [smallint] NOT NULL,
	[ORTRXTYP] [smallint] NOT NULL,
	[ORCTRNUM] [char](21) NOT NULL,
	[ORMSTRID] [char](31) NOT NULL,
	[ORMSTRNM] [char](65) NOT NULL,
	[ORDOCNUM] [char](21) NOT NULL,
	[ORPSTDDT] [datetime] NOT NULL,
	[ORTRXSRC] [char](13) NOT NULL,
	[OrigDTASeries] [smallint] NOT NULL,
	[OrigSeqNum] [int] NOT NULL,
	[SEQNUMBR] [int] NOT NULL,
	[DTA_GL_Status] [smallint] NOT NULL,
	[DTA_Index] [numeric](19, 5) NOT NULL,
	[CURNCYID] [char](15) NOT NULL,
	[CURRNIDX] [smallint] NOT NULL,
	[RATETPID] [char](15) NOT NULL,
	[EXGTBLID] [char](15) NOT NULL,
	[XCHGRATE] [numeric](19, 7) NOT NULL,
	[EXCHDATE] [datetime] NOT NULL,
	[TIME1] [datetime] NOT NULL,
	[RTCLCMTD] [smallint] NOT NULL,
	[NOTEINDX] [numeric](19, 5) NOT NULL,
	[ICTRX] [tinyint] NOT NULL,
	[ORCOMID] [char](5) NOT NULL,
	[ORIGINJE] [int] NOT NULL,
	[PERIODID] [smallint] NOT NULL,
	[DEBITAMT] [numeric](19, 5) NOT NULL,
	[CRDTAMNT] [numeric](19, 5) NOT NULL,
	[ORDBTAMT] [numeric](19, 5) NOT NULL,
	[ORCRDAMT] [numeric](19, 5) NOT NULL,
	[DOCDATE] [datetime] NOT NULL,
	[PSTGNMBR] [int] NOT NULL,
	[PPSGNMBR] [int] NOT NULL,
	[DENXRATE] [numeric](19, 7) NOT NULL,
	[MCTRXSTT] [smallint] NOT NULL,
	[CorrespondingUnit] [char](5) NOT NULL,
	[VOIDED] [tinyint] NOT NULL,
	[Back_Out_JE] [int] NOT NULL,
	[Back_Out_JE_Year] [smallint] NOT NULL,
	[Correcting_JE] [int] NOT NULL,
	[Correcting_JE_Year] [smallint] NOT NULL,
	[Original_JE] [int] NOT NULL,
	[Original_JE_Seq_Num] [numeric](19, 5) NOT NULL,
	[Original_JE_Year] [smallint] NOT NULL,
	[Ledger_ID] [smallint] NOT NULL,
	[Adjustment_Transaction] [tinyint] NOT NULL,
	[APRVLUSERID] [char](15) NOT NULL,
	[APPRVLDT] [datetime] NOT NULL,
	[DEX_ROW_TS] [datetime] NOT NULL,
	[DEX_ROW_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PKGL20000] PRIMARY KEY NONCLUSTERED 
(
	[DEX_ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL20000] ADD  CONSTRAINT [DF__GL20000__DEX_ROW__0FB750B3]  DEFAULT (getutcdate()) FOR [DEX_ROW_TS]
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL20000]  WITH CHECK ADD CHECK  ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO

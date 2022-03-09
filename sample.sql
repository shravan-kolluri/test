
CREATE TABLE BANK_ACCOUNT
(
	BANK_ACCOUNT_ID NUMBER(38,0) NOT NULL ,
	BANK_ACCOUNT_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NOT NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NOT NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	BANK_ACCOUNT_HOLDER_ORG_ROLE_ID NUMBER(38,0) NULL ,
	CCY_ISO VARCHAR(3) NULL ,
	BANK_ORG_ROLE_ID NUMBER(38,0) NULL ,
	BANK_ACCOUNT_NUM VARCHAR(10) NULL ,
	BANK_ACCOUNT_HOLDER VARCHAR(80) NULL ,
	BANK_ACCOUNT_TYPE VARCHAR(20) NULL ,
	SORT_CODE VARCHAR(8) NULL ,
	OPENING_BAL NUMBER(15,2) NULL ,
	BAL_DATE TIMESTAMP_NTZ(0) NULL ,
	SYS_TIMESTAMP BINARY(16) NOT NULL ,
	SWIFT VARCHAR(15) NULL ,
	IBAN VARCHAR(60) NULL ,
	PAYEE_NAME VARCHAR(255) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE CASH_BOOK
(
	CASH_BOOK_ID NUMBER(38,0) NOT NULL ,
	CASH_BOOK_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NOT NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	BANK_ACCOUNT_ID NUMBER(38,0) NOT NULL ,
	CASH_BOOK_NAME VARCHAR(80) NULL ,
	CASH_BOOK_DSC VARCHAR(255) NULL ,
	CASH_BOOK_STATUS VARCHAR(20) NULL ,
	SYS_TIMESTAMP BINARY(16) NULL ,
	SYND VARCHAR(4) NULL ,
	PRODUCING_OFFICE VARCHAR(40) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE FIN_TRANS
(
	FIN_TRANS_ID NUMBER(38,0) NOT NULL ,
	FIN_TRANS_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NOT NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	POLICY_ID NUMBER(38,0) NULL ,
	TRANS_REF VARCHAR(17) NULL ,
	ACCOUNT_PERIOD VARCHAR(20) NULL ,
	ADVICE_DATE TIMESTAMP_NTZ(0) NULL ,
	SETT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	LEDGER_CCY_ISO VARCHAR(3) NULL ,
	ORIG_CCY_ISO VARCHAR(3) NULL ,
	ACCOUNT_DATE TIMESTAMP_NTZ(0) NULL ,
	CERT_RECEIVED_IND VARCHAR(1) NULL ,
	TRANS_TYPE VARCHAR(20) NULL ,
	TRANS_STATUS VARCHAR(20) NULL ,
	CLIENT_ROLE_ID NUMBER(38,0) NULL ,
	CLAIM_MOVEMENT_ID NUMBER(38,0) NULL ,
	LOSS_REGISTER_ID NUMBER(38,0) NULL ,
	CCY_ROE NUMBER(15,7) NULL ,
	STATEMENT_DATE TIMESTAMP_NTZ(0) NULL ,
	NARR VARCHAR(2000) NULL ,
	RISK_CODE VARCHAR(4) NULL ,
	BORDEREAU_ID NUMBER(38,0) NULL ,
	TRANS_DATE TIMESTAMP_NTZ(0) NULL ,
	REVERSED_IND VARCHAR(1) NOT NULL ,
	ROE_CATEGORY VARCHAR(20) NULL ,
	AS_AT_DATE TIMESTAMP_NTZ(0) NULL ,
	CLIENT_SETT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	UW_SETT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	CLIENT_LEDGER_ACCOUNT_ID NUMBER(38,0) NULL ,
	NUM_OF_INSTALMENT NUMBER(38,0) NULL ,
	INSTALMENT_PERIOD VARCHAR(50) NULL ,
	CLIENT_TOT NUMBER(38,0) NULL ,
	UWTOT NUMBER(38,0) NULL ,
	TREATY_STATEMENT_SERIAL_NUM NUMBER(38,0) NULL ,
	COMMENT VARCHAR(255) NULL ,
	VALUE_DATE TIMESTAMP_NTZ(0) NULL ,
	RECEIVED_SENT_DATE TIMESTAMP_NTZ(0) NULL ,
	SETT_TYPE VARCHAR(20) NULL ,
	SETT_REF VARCHAR(17) NULL ,
	SETT_DATE TIMESTAMP_NTZ(0) NULL ,
	BATCH_NUM NUMBER(38,0) NULL ,
	CASH_BOOK_ID NUMBER(38,0) NULL ,
	SYS_TIMESTAMP BINARY(16) NOT NULL ,
	BATCH_ID NUMBER(38,0) NULL ,
	LEDGER_ASSURED VARCHAR(255) NULL ,
	POLICY_REFERENCE VARCHAR(20) NULL ,
	UPD_BY VARCHAR(50) NULL ,
	UW VARCHAR(321) NULL ,
	INCEPTION_DATE TIMESTAMP_NTZ(0) NULL ,
	EXPIRY_DATE TIMESTAMP_NTZ(0) NULL ,
	YOA NUMBER(38,0) NULL ,
	OUTWARD_MOVEMENT_ID NUMBER(38,0) NULL ,
	POLICY_SETT_SCHED_ID NUMBER(38,0) NULL ,
	ASSOC_TRANS_REF VARCHAR(17) NULL ,
	ACCOUNT_TO_BASE_CCY_ROE NUMBER(15,7) NULL ,
	MAJOR_CLASS VARCHAR(6) NULL ,
	MINOR_CLASS VARCHAR(6) NULL ,
	TRANS_SUB_TYPE VARCHAR(20) NULL ,
	TRANS_SOURCE VARCHAR(20) NULL ,
	MIGRATE_IND VARCHAR(1) NULL ,
	POLICY_LINE_ID NUMBER(38,0) NULL ,
	DATE_CHASED TIMESTAMP_NTZ(3) NULL ,
	DEBT_STATUS VARCHAR(3) NULL ,
	CASH_TYPE VARCHAR(50) NULL ,
	PARENT_TRANS_REF VARCHAR(17) NULL ,
	PARENT_LEDGER_TRANS_ID NUMBER(38,0) NULL ,
	ORIG_CASH_BOOK_ID NUMBER(38,0) NULL ,
	ORIG_CASH_BOOK_AMT NUMBER(15,2) NULL ,
	CROSS_SPLIT VARCHAR(1) NULL ,
	ROE_DIFF NUMBER(15,2) NULL ,
	DEAL_REFERENCE VARCHAR(40) NULL ,
	BORDEREAUX_MONTH VARCHAR(6) NULL ,
	BORDEREAUX_REF VARCHAR(25) NULL ,
	BROKER_TRANS_REF VARCHAR(18) NULL ,
	PROCESSED_BY_AUTO_ALLOCATION BOOLEAN NULL ,
	AUTO_ALLOCATION_STATUS VARCHAR(250) NULL ,
	PAYMENT_STATUS VARCHAR(40) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE FIN_TRANS_DETAIL
(
	FIN_TRANS_DETAIL_ID NUMBER(38,0) NOT NULL ,
	FIN_TRANS_DETAIL_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NOT NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	FIN_TRANS_ID NUMBER(38,0) NOT NULL ,
	FIN_TRANS_CATEGORY_ROLE_ID NUMBER(38,0) NOT NULL ,
	NON_FIN_VALUE VARCHAR(255) NULL ,
	LEDGER_AMT NUMBER(15,2) NULL ,
	ORIG_AMT NUMBER(15,2) NULL ,
	SEQ_NUM NUMBER(38,0) NULL ,
	STATS_REF1 VARCHAR(20) NULL ,
	STATS_REF2 VARCHAR(20) NULL ,
	STATS_REF3 VARCHAR(20) NULL ,
	STATS_REF4 VARCHAR(20) NULL ,
	STATS_REF5 VARCHAR(20) NULL ,
	STATS_REF6 VARCHAR(20) NULL ,
	STATS_REF7 VARCHAR(20) NULL ,
	STATS_REF8 VARCHAR(20) NULL ,
	STATS_REF9 VARCHAR(20) NULL ,
	STATS_REF10 VARCHAR(20) NULL ,
	REVERSED_IND VARCHAR(1) NULL ,
	VISIBLE_IND VARCHAR(1) NULL ,
	LEDGER_ACCOUNT_ID NUMBER(38,0) NULL ,
	TREATY_STATEMENT_DATE TIMESTAMP_NTZ(0) NULL ,
	TREATY_STATEMENT_NARR VARCHAR(255) NULL ,
	MANUAL_IND VARCHAR(1) NULL ,
	SYS_TIMESTAMP BINARY(16) NULL ,
	MIGRATE_IND VARCHAR(1) NULL ,
	ORC NUMBER(10,7) NULL ,
	ADD_COMM_AMT NUMBER(19,2) NULL ,
	BROKER_TRANS_REF VARCHAR(18) NULL ,
	PAYMENT_STATUS VARCHAR(40) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE LEDGER_TRANS
(
	LEDGER_TRANS_ID NUMBER(38,0) NOT NULL ,
	LEDGER_TRANS_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	CONTRA_IND VARCHAR(1) NULL ,
	POLICY_MARKET_ID NUMBER(38,0) NULL ,
	LEDGER_TRANS_TYPE VARCHAR(20) NULL ,
	LEDGER_ACCOUNT_ID NUMBER(38,0) NOT NULL ,
	FIN_TRANS_DETAIL_ID NUMBER(38,0) NULL ,
	FIN_TRANS_CATEGORY_ROLE_ID NUMBER(38,0) NOT NULL ,
	DEBIT_CREDIT_DETAIL_ID NUMBER(38,0) NULL ,
	ASSOC_ROLE_ID NUMBER(38,0) NULL ,
	LEDGER_TRANS_STATUS VARCHAR(20) NULL ,
	ORIG_AMT NUMBER(15,2) NULL ,
	LEDGER_AMT NUMBER(15,2) NULL ,
	LEDGER_CCY_ISO VARCHAR(3) NULL ,
	ORIG_CCY_ISO VARCHAR(3) NULL ,
	ADVICE_DATE TIMESTAMP_NTZ(0) NULL ,
	SETT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	POLICY_ID NUMBER(38,0) NULL ,
	NARR VARCHAR(2000) NULL ,
	FIN_TRANS_SETT_SCHED_ID NUMBER(38,0) NULL ,
	DEBIT_CREDIT_SETT_SCHED_ID NUMBER(38,0) NULL ,
	RISK_CODE VARCHAR(4) NULL ,
	BSM_SIGNING_DETAIL_ID NUMBER(38,0) NULL ,
	CLIENT_PAID_DATE TIMESTAMP_NTZ(0) NULL ,
	COMMENT VARCHAR(2000) NULL ,
	SYS_TIMESTAMP BINARY(16) NULL ,
	LOB_ID NUMBER(38,0) NULL ,
	MIGRATE_IND VARCHAR(1) NULL ,
	FIN_TRANS_GROUP_ID NUMBER(38,0) NULL ,
	ORC NUMBER(10,7) NULL ,
	ADD_COMMISSION_PCT NUMBER(10,7) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE LEDGER_TRANS_BREAKDOWN
(
	LEDGER_TRANS_BREAKDOWN_ID NUMBER(38,0) NOT NULL ,
	LEDGER_TRANS_BREAKDOWN_ROW_ID NUMBER(38,0) NOT NULL ,
	USER_ID VARCHAR(81) NULL ,
	OWNER_ID NUMBER(38,0) NULL ,
	CREATED_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_DATE TIMESTAMP_NTZ(3) NOT NULL ,
	DEL VARCHAR(1) NULL ,
	EFFECTIVE_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	LEDGER_TRANS_ID NUMBER(38,0) NOT NULL ,
	LEDGER_TRANS_BREAKDOWN_STATUS VARCHAR(20) NULL ,
	FUNDING_STATUS VARCHAR(20) NULL ,
	MATCHED_LEDGER_TRANS_BREAKDOWN_ID NUMBER(38,0) NULL ,
	LEDGER_AMT NUMBER(15,2) NULL ,
	ORIG_AMT NUMBER(15,2) NULL ,
	LEDGER_CCY_ISO VARCHAR(3) NULL ,
	ORIG_CCY_ISO VARCHAR(3) NULL ,
	CONTRA_IND VARCHAR(1) NULL ,
	SYS_TIMESTAMP BINARY(16) NULL ,
	LEDGER_ALLOCATION_ID NUMBER(38,0) NULL ,
	CASH_ID NUMBER(38,0) NULL ,
	ACCOUNT_PERIOD_ID NUMBER(38,0) NULL ,
	ALLOCATE_DATE TIMESTAMP_NTZ(0) NULL ,
	MIGRATE_IND VARCHAR(1) NULL ,
	WRITE_OFF_REASON VARCHAR(40) NULL ,
	STATS_PROCESSED_IND BOOLEAN NOT NULL ,
	SYS_LAST_UPD BINARY(16) NOT NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE POLICY_SETT_SCHED
(
	POLICY_SETT_SCHED_ID NUMBER(38,0) NOT NULL ,
	POLICY_ID NUMBER(38,0) NOT NULL ,
	BORDEREAU_SETT_IND VARCHAR(1) NULL ,
	DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	STATS_CCY_ISO VARCHAR(3) NULL ,
	SYND_EPI NUMBER(15,2) NULL ,
	BORDEREAU_VALUE NUMBER(15,2) NULL ,
	BORDEREAU_PATH VARCHAR(255) NULL ,
	LAST_UPD TIMESTAMP_NTZ(0) NOT NULL ,
	SYS_LAST_UPD BINARY(16) NULL ,
	BORDEREAU_SETT_ID NUMBER(38,0) NULL ,
	INS_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	DEL_DATE TIMESTAMP_NTZ(3) NULL ,
	UPD_BY VARCHAR(50) NOT NULL ,
	PREM_SETT_CCY_ISO VARCHAR(3) NULL ,
	FIN_TRANS_ID NUMBER(38,0) NOT NULL ,
	SYND VARCHAR(10) NULL ,
	INSTALMENT_DATE TIMESTAMP_NTZ(0) NULL ,
	POLICY_PREM_ID NUMBER(38,0) NULL ,
	INSTALMENT_TYPE VARCHAR(50) NULL ,
	ORIG_CCY_ISO VARCHAR(3) NULL ,
	ORIG_AMT NUMBER(15,2) NULL ,
	CLIENT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	INSTALMENT_DSC VARCHAR(255) NULL ,
	INSTALMENT_NUM NUMBER(38,0) NULL ,
	CLIENT_NET_PREM_PCT NUMBER(12,7) NULL ,
	BORDEREAU_ACTUAL_VAL NUMBER(15,2) NULL ,
	RECEIVED_DATE TIMESTAMP_NTZ(0) NULL ,
	NARRATIVE VARCHAR(255) NULL ,
	EXPECTED_AMT_SETT_CCY NUMBER(15,2) NULL ,
	SETT_CCY_ISO VARCHAR(3) NULL ,
	CLASS_CODE VARCHAR(50) NULL ,
	UW_DIVISION VARCHAR(20) NULL ,
	YOA NUMBER(38,0) NULL ,
	RISK_CODE VARCHAR(4) NULL ,
	IBNR_AMT NUMBER(15,2) NULL ,
	RESERVE_AMT NUMBER(15,2) NULL ,
	ROE NUMBER(20,7) NULL ,
	COMPLETED VARCHAR(1) NULL ,
	POLICY_ENDORSMNT_ID NUMBER(38,0) NULL ,
	CLOSING_DATE TIMESTAMP_NTZ(0) NULL ,
	ORIG_GROSS_AMT NUMBER(15,2) NULL ,
	SETT_GROSS_AMT NUMBER(15,2) NULL ,
	ACCOUNTING_PERIOD_FROM TIMESTAMP_NTZ(0) NULL ,
	ACCOUNTING_PERIOD_TO TIMESTAMP_NTZ(0) NULL ,
	COMPLETED_DATE TIMESTAMP_NTZ(0) NULL ,
	COMPLETED_BY VARCHAR(50) NULL ,
	DATE_CHASED TIMESTAMP_NTZ(3) NULL ,
	DEBT_STATUS VARCHAR(3) NULL ,
	CHASING_NARRATIVE VARCHAR(255) NULL ,
	LEDGER_ACCOUNT_ID NUMBER(38,0) NULL ,
	STATUS VARCHAR(50) NULL ,
	BORDEREAUX_MONTH VARCHAR(6) NULL ,
	BORDEREAUX_REF VARCHAR(25) NULL ,
	BORDEREAUX_DETAIL_ID NUMBER(38,0) NULL ,
	PREMIUM_STATUS VARCHAR(40) NULL ,
	BROKER_TRANS_REF VARCHAR(18) NULL ,
	IS_SYSTEM_GENERATED BOOLEAN NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE POLICY_SETT_SCHED_SHARE
(
	POLICY_SETT_SCHED_SHARE_ID NUMBER(38,0) NOT NULL ,
	POLICY_SETT_SCHED_ID NUMBER(38,0) NOT NULL ,
	POLICY_ID NUMBER(38,0) NOT NULL ,
	BUREAU_SETT_IND VARCHAR(1) NOT NULL ,
	DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	CLIENT_DUE_DATE TIMESTAMP_NTZ(0) NULL ,
	CLIENT_NET_PREM_PCT NUMBER(12,7) NULL ,
	INSTALMENT_DATE TIMESTAMP_NTZ(0) NULL ,
	INSTALMENT_NUM NUMBER(38,0) NULL ,
	INSTALMENT_TYPE VARCHAR(100) NULL ,
	SYND VARCHAR(50) NULL ,
	ORIG_CCY_ISO VARCHAR(3) NULL ,
	SETT_CCY_ISO VARCHAR(3) NULL ,
	EXPECTED_AMT_SETT_CCY NUMBER(15,2) NULL ,
	RECEIVED_DATE TIMESTAMP_NTZ(0) NULL ,
	RECEIVED_AMT_SETT_CCY NUMBER(15,2) NULL ,
	INS_DATE TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_BY VARCHAR(100) NOT NULL ,
	LAST_UPD TIMESTAMP_NTZ(0) NOT NULL ,
	POLICY_LINE_ID NUMBER(38,0) NOT NULL ,
	ORIG_GROSS NUMBER(15,2) NULL ,
	SETT_GROSS NUMBER(15,2) NULL ,
	ORIG_AMT NUMBER(15,2) NULL ,
	COMPLETED VARCHAR(1) NULL ,
	COMPLETED_DATE TIMESTAMP_NTZ(0) NULL ,
	COMPLETED_BY VARCHAR(50) NULL ,
	FIN_TRANS_ID NUMBER(38,0) NULL ,
	EARLY_RI_PROCESSED VARCHAR(1) NOT NULL ,
	LATE_RI_PROCESSED VARCHAR(1) NULL ,
	CONVERTED_IND VARCHAR(1) NULL ,
	WRITTEN_RI_PROCESSED VARCHAR(1) NOT NULL ,
	SYS_TIME_STAMP BINARY(16) NOT NULL ,
	SIGNED_LINE NUMBER(10,7) NULL ,
	SIGNED_ORDER NUMBER(10,7) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE SETTLEMENT_SCHEDULE_DEDUCTION
(
	SETTLEMENT_SCHEDULE_DEDUCTION_ID NUMBER(38,0) NOT NULL ,
	POLICY_SETT_SCHED_ID NUMBER(38,0) NOT NULL ,
	LEVEL NUMBER(38,0) NOT NULL ,
	FIN_TRANS_CATEGORY_ID NUMBER(38,0) NOT NULL ,
	ADDITION VARCHAR(1) NULL ,
	DEDUCTION_IND VARCHAR(1) NOT NULL ,
	AMT_PCT NUMBER(19,5) NULL ,
	PCT_APPLIED NUMBER(10,7) NULL ,
	AMT_CCY_ISO VARCHAR(50) NOT NULL ,
	TOTAL_AMT NUMBER(15,2) NOT NULL ,
	INS_DATE TIMESTAMP_NTZ(0) NULL ,
	INS_BY VARCHAR(50) NULL ,
	LAST_UPD TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_BY VARCHAR(50) NULL ,
	SYS_LAST_UPD BINARY(16) NOT NULL ,
	DEL_DATE TIMESTAMP_NTZ(0) NULL ,
	TAX_TERRITORY VARCHAR(3) NULL ,
	PAID_BY_UW BOOLEAN NULL ,
	ADMINISTERED_BY_UW BOOLEAN NULL ,
	LEDGER_ACCOUNT_ID NUMBER(38,0) NULL ,
	BROKER_TRANS_REF VARCHAR(18) NULL ,
	ORIGINAL_DEDUCTION_ID NUMBER(38,0) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

CREATE TABLE SETTLEMENT_SCHEDULE_SHARE_DEDUCTION
(
	SETTLEMENT_SCHEDULE_SHARE_DEDUCTION_ID NUMBER(38,0) NOT NULL ,
	POLICY_SETT_SCHED_SHARE_ID NUMBER(38,0) NOT NULL ,
	SETTLEMENT_SCHEDULE_DEDUCTION_ID NUMBER(38,0) NOT NULL ,
	TOTAL_AMT NUMBER(15,2) NOT NULL ,
	INS_DATE TIMESTAMP_NTZ(0) NULL ,
	INS_BY VARCHAR(50) NULL ,
	LAST_UPD TIMESTAMP_NTZ(0) NOT NULL ,
	UPD_BY VARCHAR(50) NULL ,
	SYS_LAST_UPD BINARY(16) NOT NULL ,
	DEL_DATE TIMESTAMP_NTZ(0) NULL 
)
DATA_RETENTION_TIME_IN_DAYS = 1;

ALTER TABLE BANK_ACCOUNT
	ADD CONSTRAINT BANK_ACCOUNT_PK_BankAccount PRIMARY KEY (BANK_ACCOUNT_ID);

ALTER TABLE CASH_BOOK
	ADD CONSTRAINT CASH_BOOK_PK_CashBook PRIMARY KEY (CASH_BOOK_ID);

ALTER TABLE FIN_TRANS
	ADD CONSTRAINT FIN_TRANS_PK_FinTrans PRIMARY KEY (FIN_TRANS_ID);

ALTER TABLE FIN_TRANS_DETAIL
	ADD CONSTRAINT FIN_TRANS_DETAIL_PK_FinTransDetail PRIMARY KEY (FIN_TRANS_DETAIL_ID);

ALTER TABLE LEDGER_TRANS
	ADD CONSTRAINT LEDGER_TRANS_PK_LedgerTrans PRIMARY KEY (LEDGER_TRANS_ID);

ALTER TABLE LEDGER_TRANS_BREAKDOWN
	ADD CONSTRAINT LEDGER_TRANS_BREAKDOWN_PK_LedgerTransBreakdown PRIMARY KEY (LEDGER_TRANS_BREAKDOWN_ID);

ALTER TABLE POLICY_SETT_SCHED
	ADD CONSTRAINT POLICY_SETT_SCHED_PK_PolicySettSched PRIMARY KEY (POLICY_SETT_SCHED_ID);

ALTER TABLE POLICY_SETT_SCHED_SHARE
	ADD CONSTRAINT POLICY_SETT_SCHED_SHARE_PK_PolicySettSchedShare PRIMARY KEY (POLICY_SETT_SCHED_SHARE_ID);

ALTER TABLE SETTLEMENT_SCHEDULE_DEDUCTION
	ADD CONSTRAINT SETTLEMENT_SCHEDULE_DEDUCTION_PK_SettlementScheduleDeduction PRIMARY KEY (SETTLEMENT_SCHEDULE_DEDUCTION_ID);

ALTER TABLE SETTLEMENT_SCHEDULE_SHARE_DEDUCTION
	ADD CONSTRAINT SETTLEMENT_SCHEDULE_SHARE_DEDUCTION_PK_SettlementScheduleShareDeduction PRIMARY KEY (SETTLEMENT_SCHEDULE_SHARE_DEDUCTION_ID);

ALTER TABLE CASH_BOOK
	ADD CONSTRAINT R_11 FOREIGN KEY (BANK_ACCOUNT_ID) REFERENCES BANK_ACCOUNT (BANK_ACCOUNT_ID);

ALTER TABLE FIN_TRANS
	ADD CONSTRAINT R_12 FOREIGN KEY (CASH_BOOK_ID) REFERENCES CASH_BOOK (CASH_BOOK_ID);

ALTER TABLE FIN_TRANS
	ADD CONSTRAINT SYS_CONSTRAINT_2c0dc4f6_8b94_4425_add4_e540e0e634a2 FOREIGN KEY (POLICY_ID) REFERENCES POLICY (POLICY_ID);

ALTER TABLE FIN_TRANS_DETAIL
	ADD CONSTRAINT R_7 FOREIGN KEY (FIN_TRANS_ID) REFERENCES FIN_TRANS (FIN_TRANS_ID);

ALTER TABLE LEDGER_TRANS
	ADD CONSTRAINT R_2 FOREIGN KEY (FIN_TRANS_DETAIL_ID) REFERENCES FIN_TRANS_DETAIL (FIN_TRANS_DETAIL_ID);

ALTER TABLE LEDGER_TRANS_BREAKDOWN
	ADD CONSTRAINT R_3 FOREIGN KEY (LEDGER_TRANS_ID) REFERENCES LEDGER_TRANS (LEDGER_TRANS_ID);

ALTER TABLE POLICY_SETT_SCHED
	ADD CONSTRAINT R_9 FOREIGN KEY (FIN_TRANS_ID) REFERENCES FIN_TRANS (FIN_TRANS_ID);

ALTER TABLE POLICY_SETT_SCHED_SHARE
	ADD CONSTRAINT R_10 FOREIGN KEY (POLICY_SETT_SCHED_ID) REFERENCES POLICY_SETT_SCHED (POLICY_SETT_SCHED_ID);

ALTER TABLE POLICY_SETT_SCHED_SHARE
	ADD CONSTRAINT R_8 FOREIGN KEY (FIN_TRANS_ID) REFERENCES FIN_TRANS (FIN_TRANS_ID);

ALTER TABLE SETTLEMENT_SCHEDULE_DEDUCTION
	ADD CONSTRAINT R_6 FOREIGN KEY (POLICY_SETT_SCHED_ID) REFERENCES POLICY_SETT_SCHED (POLICY_SETT_SCHED_ID);

ALTER TABLE SETTLEMENT_SCHEDULE_SHARE_DEDUCTION
	ADD CONSTRAINT R_4 FOREIGN KEY (POLICY_SETT_SCHED_SHARE_ID) REFERENCES POLICY_SETT_SCHED_SHARE (POLICY_SETT_SCHED_SHARE_ID);

ALTER TABLE SETTLEMENT_SCHEDULE_SHARE_DEDUCTION
	ADD CONSTRAINT R_5 FOREIGN KEY (SETTLEMENT_SCHEDULE_DEDUCTION_ID) REFERENCES SETTLEMENT_SCHEDULE_DEDUCTION (SETTLEMENT_SCHEDULE_DEDUCTION_ID);

CREATE WAREHOUSE ARCUS_BI 
WAREHOUSE_SIZE = XSMALL
MAX_CLUSTER_COUNT = 2
MIN_CLUSTER_COUNT = 1
SCALING_POLICY = Standard
AUTO_SUSPEND = 600
AUTO_RESUME = True
INITIALLY_SUSPENDED = False
RESOURCE_MONITOR = null
MAX_CONCURRENCY_LEVEL = 8
STATEMENT_QUEUED_TIMEOUT_IN_SECONDS = 0
STATEMENT_TIMEOUT_IN_SECONDS = 172800;

CREATE WAREHOUSE DEMO_WH 
WAREHOUSE_SIZE = XSMALL
MAX_CLUSTER_COUNT = 1
MIN_CLUSTER_COUNT = 1
SCALING_POLICY = Standard
AUTO_SUSPEND = 600
AUTO_RESUME = True
INITIALLY_SUSPENDED = True
RESOURCE_MONITOR = null
MAX_CONCURRENCY_LEVEL = 8
STATEMENT_QUEUED_TIMEOUT_IN_SECONDS = 0
STATEMENT_TIMEOUT_IN_SECONDS = 172800;

CREATE WAREHOUSE LOAD_WH 
WAREHOUSE_SIZE = XSMALL
MAX_CLUSTER_COUNT = 1
MIN_CLUSTER_COUNT = 1
SCALING_POLICY = Standard
AUTO_SUSPEND = 300
AUTO_RESUME = True
INITIALLY_SUSPENDED = False
RESOURCE_MONITOR = null
MAX_CONCURRENCY_LEVEL = 8
STATEMENT_QUEUED_TIMEOUT_IN_SECONDS = 0
STATEMENT_TIMEOUT_IN_SECONDS = 172800;

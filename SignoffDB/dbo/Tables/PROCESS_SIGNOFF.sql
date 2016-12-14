CREATE TABLE [dbo].[PROCESS_SIGNOFF] (
    [ASOFDATE]         DATE           NOT NULL,
    [PROCESS_ID]       INT            NOT NULL,
    [RAG]              VARCHAR (1)    NOT NULL,
    [SIGNOFF_COMMENT]  NVARCHAR (500) NULL,
    [USER_ID]          NVARCHAR (6)   NULL,
    [SIGNOFF_DATETIME] DATETIME       NULL,
    CONSTRAINT [pk_process_signoff] PRIMARY KEY CLUSTERED ([ASOFDATE] ASC, [PROCESS_ID] ASC),
    CONSTRAINT [chk_process_SIGNOFF] CHECK ([RAG]='N' OR [RAG]='G' OR [RAG]='A' OR [RAG]='R')
);


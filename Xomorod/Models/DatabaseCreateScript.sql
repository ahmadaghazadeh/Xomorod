﻿USE [Xomorod]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInRoles_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles] DROP CONSTRAINT [FK_UserInRoles_Users]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ElementRoles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles] DROP CONSTRAINT [FK_ElementRoles_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Roles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [FK_Roles_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Resources_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Resources]'))
ALTER TABLE [dbo].[Resources] DROP CONSTRAINT [FK_Resources_Portfolios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Portfolios_Resources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Portfolios]'))
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [FK_Portfolios_Resources]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories] DROP CONSTRAINT [FK_PortfolioCategories_Portfolios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories] DROP CONSTRAINT [FK_PortfolioCategories_Categories]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LogHistory_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]'))
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [FK_LogHistory_Users]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExtraLinks_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExtraLinks]'))
ALTER TABLE [dbo].[ExtraLinks] DROP CONSTRAINT [FK_ExtraLinks_Portfolios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ErrorLog_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ErrorLog]'))
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [FK_ErrorLog_Users]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Categories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Categories]'))
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [FK_Categories_Categories]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Users__ModifyDat__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifyDat__1A14E395]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_UniqueId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Rank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_Rank]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Portfolio__Modif__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF__Portfolio__Modif__15502E78]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_UniqueId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Login__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__Login__117F9D94]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Succe__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__Succe__108B795B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__RunDa__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__RunDa__0F975522]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_MACAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_MACAddress]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IPv4Address]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_IPv4Address]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_AppName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_AppName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_Type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_Type]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IsHandled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_IsHandled]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrorHost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_ErrorHost]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_ErrTime]
END

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserInRoles]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
DROP TABLE [dbo].[LogHistory]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[ErrorLog]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 11/14/2015 11:53:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_CatchError]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_CatchError]
	@UserId INT,
	@RaisError BIT,
	@ExtraData NVARCHAR(MAX) = NULL,
	@ErrorId BIGINT OUTPUT
AS
BEGIN
	DECLARE @DatabaseName NVARCHAR(MAX) = ISNULL(Original_DB_NAME(), DB_NAME()),
	        @ERROR_NUMBER INT = ERROR_NUMBER(),	-- @@ERROR
	        @ERROR_STATE INT = ERROR_STATE(),
	        @ERROR_SEVERITY INT = ERROR_SEVERITY(),
	        @ERROR_LINE INT = ERROR_LINE(),
	        @ERROR_Column INT = 0,
	        @ERROR_PROCEDURE SYSNAME = ISNULL(ERROR_PROCEDURE(), ''New Query''),
	        @ERROR_MESSAGE NVARCHAR(MAX) = ERROR_MESSAGE(),
	        @Source NVARCHAR(1024) = @@SERVERNAME,
	        @IP_Address SYSNAME = (
	            SELECT client_net_address
	            FROM   SYS.DM_EXEC_CONNECTIONS
	            WHERE  SESSION_ID = @@SPID
	        ),
	        @MAC_Address SYSNAME = (
	            SELECT net_address
	            FROM   sys.sysprocesses
	            WHERE  spid = @@SPID
	        ),
	        @Culture SYSNAME = @@LANGUAGE,
	        @OS NVARCHAR(MAX) = @@Version,
	        @ClrVersion SYSNAME = (
	            SELECT CONVERT(SYSNAME, SERVERPROPERTY(''BuildClrVersion''))
	        ),
	        @ErrorDate DATETIME = GETDATE(),
	        @IsHandled BIT = 1,
	        @ErrorType SYSNAME = ''SqlException'',
	        @MemberType SYSNAME = ''Stored Procedure'';
	
	IF @ERROR_NUMBER <> 50000
	    -- Check the error exist or not? if exist then only update that 
	    IF (
	           SELECT 1
	           FROM   [ErrorLog]
	           WHERE  HResult        = @ERROR_NUMBER
	                  AND Line       = @ERROR_LINE
	                  AND Method     = @ERROR_PROCEDURE
	                  AND UserId     = @UserId
	       ) > 0
	        -- Update error object from ErrorLog table 
	        UPDATE dbo.ErrorLog
	        SET    DuplicateNo += 1,
	               @ErrorId = ErrorId
	        WHERE  HResult = @ERROR_NUMBER
	               AND Line = @ERROR_LINE
	               AND Method = @ERROR_PROCEDURE
	               AND UserId = @UserId; 
	ELSE 
	BEGIN
		INSERT INTO [ErrorLog]
		  (
		    [OS],
		    [UserId],
		    [CLRVersion],
		    [ErrorDateTime],
		    [IsHandled],
		    [Type],
		    [Line],
		    [Column],
		    [Message],
		    [HResult],
		    [Source],
		    [Method],
		    [ModuleName],
		    [IPv4Address],
		    [MACAddress],
		    [MemberType],
		    [CurrentCulture],
		    [DuplicateNo],
		    [Data]
		  )
		VALUES
		  (
		    @OS,
		    @UserId,
		    @ClrVersion,
		    @ErrorDate,
		    @IsHandled,
		    @ErrorType,
		    @ERROR_LINE,
		    @ERROR_Column,
		    @ERROR_MESSAGE,
		    @ERROR_NUMBER,
		    @Source,
		    @ERROR_PROCEDURE,
		    @DatabaseName,
		    @IP_Address,
		    @MAC_Address,
		    @MemberType,
		    @Culture,
		    0,
		    (
		        SELECT @ExtraData [ExtraData],
		               @ERROR_SEVERITY [SEVERITY],
		               @ERROR_STATE [STATE]
		               FOR 
		               XML PATH(''''),
		               ROOT(''Error'')
		    )
		  )
		-- Set AutoId of ErrorLog table to @ErrorLogID for use in Snapshots table         
		SELECT @ErrorId = SCOPE_IDENTITY()
	END
	
	IF @RaisError = 1
	    RAISERROR(@ERROR_MESSAGE, 18, 255) 
	
	RETURN
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_InsertErrorLog]
	@ServerDateTime DATETIME,
	@Host SYSNAME,
	@User INT,
	@IsHandled BIT,
	@Type VARCHAR(200),
	@AppName VARCHAR(200),
	@CurrentCulture SYSNAME = NULL,
	@CLRVersion SYSNAME = NULL,
	@Message NVARCHAR(MAX) = NULL,
	@Source NVARCHAR(MAX) = NULL,
	@StackTrace NVARCHAR(MAX) = NULL,
	@ModuleName VARCHAR(200) = NULL,
	@MemberType SYSNAME = NULL,
	@Method VARCHAR(500) = NULL,
	@Processes VARCHAR(MAX) = NULL,
	@ErrorDateTime DATETIME,
	@OS VARCHAR(1000) = NULL,
	@IPv4Address SYSNAME = NULL,
	@MACAddress SYSNAME = NULL,
	@HResult INT,
	@Line INT,
	@Column INT,
	@Duplicate INT,
	@Data XML = NULL
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
		-- Check the error exist or not? if exist then only update that 
		IF (
		       SELECT COUNT(ErrorId)
		       FROM   [ErrorLog]
		       WHERE  HResult          = @HResult
		              AND Line         = @Line
		              AND Method       = @Method
		              AND [UserId]     = @User
		   ) > 0
		    -- Update error object from ErrorLog table 
		    UPDATE dbo.ErrorLog
		    SET    DuplicateNo += 1
		    WHERE  HResult = @HResult
		           AND Line = @Line
		           AND Method = @Method
		           AND [UserId] = @User
		ELSE
		BEGIN
		    -- Insert error object into ErrorLog table 
		    INSERT INTO [ErrorLog]
		      (
		        [ServerDateTime],
		        [Host],
		        [UserId],
		        [IsHandled],
		        [Type],
		        [AppName],
		        [CurrentCulture],
		        [CLRVersion],
		        [Message],
		        [Source],
		        [StackTrace],
		        [ModuleName],
		        [MemberType],
		        [Method],
		        [Processes],
		        [ErrorDateTime],
		        [OS],
		        [IPv4Address],
		        [MACAddress],
		        [HResult],
		        [Line],
		        [Column],
		        [DuplicateNo],
		        [Data]
		      )
		    VALUES
		      (
		        @ServerDateTime,
		        @Host,
		        @User,
		        @IsHandled,
		        @Type,
		        @AppName,
		        @CurrentCulture,
		        @CLRVersion,
		        @Message,
		        @Source,
		        @StackTrace,
		        @ModuleName,
		        @MemberType,
		        @Method,
		        @Processes,
		        @ErrorDateTime,
		        @OS,
		        @IPv4Address,
		        @MACAddress,
		        @HResult,
		        @Line,
		        @Column,
		        @Duplicate,
		        @Data
		      ) 
		    -- Set AutoId of ErrorLog table to @ErrorLogID for use in Snapshots table         
		    SELECT SCOPE_IDENTITY()
		END 
		COMMIT TRANSACTION
	END TRY 
	BEGIN CATCH
		ROLLBACK TRANSACTION 
		EXEC sp_CatchError
		     @User,
		     @RaisError = 0,	-- Do not Raiserror again to client
		     @ExtraData = NULL,
		     @ErrorId = NULL
	END CATCH
END

' 
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ParentCategoryId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ErrorLog](
	[ErrorId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerDateTime] [datetime] NULL,
	[Host] [nvarchar](200) NULL,
	[IsHandled] [bit] NULL,
	[Type] [varchar](200) NULL,
	[AppName] [nvarchar](200) NULL,
	[Data] [xml] NULL,
	[CurrentCulture] [nvarchar](200) NULL,
	[CLRVersion] [varchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[ModuleName] [varchar](200) NULL,
	[MemberType] [varchar](200) NULL,
	[Method] [varchar](500) NULL,
	[Processes] [nvarchar](max) NULL,
	[ErrorDateTime] [datetime] NULL,
	[OS] [varchar](1000) NULL,
	[IPv4Address] [varchar](50) NULL,
	[MACAddress] [varchar](50) NULL,
	[HResult] [int] NULL,
	[Line] [int] NULL,
	[Column] [int] NULL,
	[DuplicateNo] [int] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExtraLinks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ExtraLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[PortfolioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogHistory](
	[RunDate] [datetime] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Success] [bit] NOT NULL,
	[TryUsername] [nvarchar](max) NULL,
	[TryPassword] [nvarchar](max) NULL,
	[LoginOrLogout] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortfolioCategories](
	[PortfolioId] [uniqueidentifier] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_PortfolioCategories] PRIMARY KEY CLUSTERED 
(
	[PortfolioId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Portfolios](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[Summary] [nvarchar](max) NULL,
	[MarkdownDescription] [nvarchar](max) NULL,
	[ModifyDate] [date] NOT NULL,
	[ProjectUrl] [nvarchar](max) NULL,
	[IconId] [int] NULL,
	[Rank] [smallint] NULL,
 CONSTRAINT [PK__Portfoli__3214EC07957343EF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ElementUniqueId] [uniqueidentifier] NOT NULL,
	[ResourceName] [nvarchar](100) NOT NULL,
	[ResourceLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_Resources_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ParentRoleId] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserInRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/14/2015 11:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[ModifyDate] [date] NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_ErrTime]  DEFAULT (getdate()) FOR [ServerDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrorHost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_ErrorHost]  DEFAULT (host_name()) FOR [Host]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IsHandled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_IsHandled]  DEFAULT ((0)) FOR [IsHandled]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_Type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_Type]  DEFAULT ('Exception') FOR [Type]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_AppName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_AppName]  DEFAULT (app_name()) FOR [AppName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IPv4Address]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_IPv4Address]  DEFAULT ('Network Not Available') FOR [IPv4Address]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_MACAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_MACAddress]  DEFAULT ('Network Not Available') FOR [MACAddress]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__RunDa__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__RunDa__0F975522]  DEFAULT (getdate()) FOR [RunDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Succe__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__Succe__108B795B]  DEFAULT ((0)) FOR [Success]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Login__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__Login__117F9D94]  DEFAULT ((1)) FOR [LoginOrLogout]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_UniqueId]  DEFAULT (newid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Portfolio__Modif__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF__Portfolio__Modif__15502E78]  DEFAULT (getdate()) FOR [ModifyDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Rank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_Rank]  DEFAULT ((0)) FOR [Rank]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UniqueId]  DEFAULT (newid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Users__ModifyDat__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ModifyDat__1A14E395]  DEFAULT (getdate()) FOR [ModifyDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Categories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Categories]'))
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentCategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Categories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Categories]'))
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ErrorLog_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ErrorLog]'))
ALTER TABLE [dbo].[ErrorLog]  WITH CHECK ADD  CONSTRAINT [FK_ErrorLog_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ErrorLog_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ErrorLog]'))
ALTER TABLE [dbo].[ErrorLog] CHECK CONSTRAINT [FK_ErrorLog_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExtraLinks_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExtraLinks]'))
ALTER TABLE [dbo].[ExtraLinks]  WITH CHECK ADD  CONSTRAINT [FK_ExtraLinks_Portfolios] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExtraLinks_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExtraLinks]'))
ALTER TABLE [dbo].[ExtraLinks] CHECK CONSTRAINT [FK_ExtraLinks_Portfolios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LogHistory_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]'))
ALTER TABLE [dbo].[LogHistory]  WITH CHECK ADD  CONSTRAINT [FK_LogHistory_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LogHistory_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]'))
ALTER TABLE [dbo].[LogHistory] CHECK CONSTRAINT [FK_LogHistory_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories]  WITH CHECK ADD  CONSTRAINT [FK_PortfolioCategories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories] CHECK CONSTRAINT [FK_PortfolioCategories_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories]  WITH CHECK ADD  CONSTRAINT [FK_PortfolioCategories_Portfolios] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PortfolioCategories_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]'))
ALTER TABLE [dbo].[PortfolioCategories] CHECK CONSTRAINT [FK_PortfolioCategories_Portfolios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Portfolios_Resources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Portfolios]'))
ALTER TABLE [dbo].[Portfolios]  WITH CHECK ADD  CONSTRAINT [FK_Portfolios_Resources] FOREIGN KEY([IconId])
REFERENCES [dbo].[Resources] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Portfolios_Resources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Portfolios]'))
ALTER TABLE [dbo].[Portfolios] CHECK CONSTRAINT [FK_Portfolios_Resources]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Resources_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Resources]'))
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Portfolios] FOREIGN KEY([ElementUniqueId])
REFERENCES [dbo].[Portfolios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Resources_Portfolios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Resources]'))
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Portfolios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Roles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Roles] FOREIGN KEY([ParentRoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Roles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Roles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ElementRoles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles]  WITH CHECK ADD  CONSTRAINT [FK_ElementRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ElementRoles_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles] CHECK CONSTRAINT [FK_ElementRoles_Roles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInRoles_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserInRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInRoles_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInRoles]'))
ALTER TABLE [dbo].[UserInRoles] CHECK CONSTRAINT [FK_UserInRoles_Users]
GO

USE [Xomorod]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_AccessFailedCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_AccessFailedCount]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_LockoutEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_LockoutEnable]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_TwoFactorEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_TwoFactorEnable]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_PhoneNumberConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_PhoneNumberConfirmed]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_EmailConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_EmailConfirmed]
END

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
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_Score]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsResources_Language]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_NewsResources_Language]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_Score]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_PublishDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_PublishDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsCategory_Order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_NewsCategory_Order]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_LangID]
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
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Languages_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_IsActive]
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
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ApiActions_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ApiActions] DROP CONSTRAINT [DF_ApiActions_IsActive]
END

GO
/****** Object:  Index [IX_RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND name = N'IX_RssResources')
DROP INDEX [IX_RssResources] ON [dbo].[RssResources]
GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'TX_RssFeeds')
DROP INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Rs_RssFeeds')
DROP INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Au_RssFeeds')
DROP INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssResources]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssCategories]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_ApiActions]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_ApiActions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_ApiActions]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckUserPass]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_CheckUserPass]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_CheckUserPass]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserInRoles]
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources_ContentProviders]
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources]
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
DROP TABLE [dbo].[RssFeeds]
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssContentProviders]
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
DROP TABLE [dbo].[RssCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
DROP TABLE [dbo].[PortfoliosComment]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
DROP TABLE [dbo].[LogHistory]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[ErrorLog]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AppSetting]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSetting]') AND type in (N'U'))
DROP TABLE [dbo].[AppSetting]
GO
/****** Object:  Table [dbo].[ApiActions]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApiActions]') AND type in (N'U'))
DROP TABLE [dbo].[ApiActions]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetStringHashing]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetStringHashing]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Users_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_RssItem]
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Increase_RssScore]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_CatchError]
GO
USE [master]
GO
/****** Object:  Database [Xomorod]    Script Date: 2/4/2016 6:11:44 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Xomorod')
DROP DATABASE [Xomorod]
GO
/****** Object:  Database [Xomorod]    Script Date: 2/4/2016 6:11:44 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Xomorod')
BEGIN
CREATE DATABASE [Xomorod] ON  PRIMARY 
( NAME = N'Xomorod', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Xomorod.mdf' , SIZE = 17408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Xomorod_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Xomorod_log.ldf' , SIZE = 16576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Xomorod].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Xomorod] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Xomorod] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Xomorod] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Xomorod] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Xomorod] SET ARITHABORT OFF 
GO
ALTER DATABASE [Xomorod] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Xomorod] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Xomorod] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Xomorod] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Xomorod] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Xomorod] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Xomorod] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Xomorod] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Xomorod] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Xomorod] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Xomorod] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Xomorod] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Xomorod] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Xomorod] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Xomorod] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Xomorod] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Xomorod] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Xomorod] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Xomorod] SET RECOVERY FULL 
GO
ALTER DATABASE [Xomorod] SET  MULTI_USER 
GO
ALTER DATABASE [Xomorod] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Xomorod] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Xomorod', N'ON'
GO
USE [Xomorod]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_CatchError]
	@UserId UNIQUEIDENTIFIER,
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
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016/01/18
-- Description:	Increase Rss Feed Score +1
-- =============================================
CREATE PROCEDURE [dbo].[sp_Increase_RssScore] 
-- Add the parameters for the stored procedure here
	@Url NVARCHAR(MAX)
AS
BEGIN
	UPDATE Xomorod.dbo.RssFeeds
	SET    Score += 1
	WHERE  [Url] = @Url
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar	
-- Create date: 2016/01/18
-- Description:	Insert one rss feed item''s to RssFeeds table
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_RssItem]
    @Url NVARCHAR(MAX) ,
    @Tilte NVARCHAR(MAX) ,
    @Description NVARCHAR(MAX) ,
    @ImageUrl NVARCHAR(MAX) ,
    @PublishDate DATETIME ,
    @Author NVARCHAR(MAX) ,
    @ResourceId INT
AS 
    BEGIN
        DECLARE @DashTrimTitle NVARCHAR(MAX) = REPLACE(@Tilte, '' '', ''-'');
        DECLARE @HashedTitle CHAR(32) = dbo.fn_GetStringHashing(@DashTrimTitle);
	
        IF ( SELECT COUNT(1)
             FROM   RssFeeds rss
             WHERE  @HashedTitle = rss.TitleHash
                    AND @Tilte = rss.Title
                    AND ( ( @Url = rss.[Url] )
                          OR ( ABS(DATEDIFF(DAY, rss.PublishDate,
                                            rss.PublishDate)) > 7 )
                        )
           ) = 0 
            BEGIN
	    -- Insert statements for procedure here
                INSERT  INTO Xomorod.dbo.RssFeeds
                        ( -- ID -- this column value is auto-generated
                          [Url] ,
                          Title ,
                          TitleHash ,
                          [Description] ,
                          ThumbnailUrl ,
                          PublishDate ,
                          Author ,
                          ResourceID
	                    )
                VALUES  ( @Url ,
                          @Tilte ,
                          @hashedTitle ,
                          @Description ,
                          @ImageUrl ,
                          @PublishDate ,
                          @Author ,
                          @ResourceId
	                    )
            END
    END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 2/4/2016 6:11:44 PM ******/
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
	@User UNIQUEIDENTIFIER,
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
		-- IF @@TRANCOUNT > 0
		IF XACT_STATE() <> 0
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
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Users_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_Users_Insert]
	@Id UNIQUEIDENTIFIER = NULL,
	@FirstName NVARCHAR(100) = Null,
	@LastName NVARCHAR(100) = Null,
	@Username NVARCHAR(100),
	@Pass VARCHAR(256),
	@Email VARCHAR(100) = NULL
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
		
		SET @Id = ISNULL(@Id, NEWID())
		
		INSERT INTO Xomorod.dbo.Users
		  (
		    Id,
		    FirstName,
		    LastName,
		    Username,
		    [Password],
		    Email
		  )
		VALUES
		  (
		    @Id,
		    @FirstName,
		    @LastName,
		    @Username,
		    CAST(@Pass AS BINARY),
		    @Email
		  )
		
		SELECT *
		FROM   Xomorod.dbo.Users u
		WHERE  u.Id = @Id
		
		COMMIT TRANSACTION
	END TRY 
	BEGIN CATCH
		-- IF @@TRANCOUNT > 0
		IF XACT_STATE() <> 0
		    ROLLBACK TRANSACTION
		
		EXEC sp_CatchError
		     @Id,
		     @RaisError = 0,	-- Do not Raiserror again to client
		     @ExtraData = NULL,
		     @ErrorId = NULL
	END CATCH
END' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetStringHashing]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_GetStringHashing]
(
	@Content NVARCHAR(MAX)
)
RETURNS CHAR(32)
AS
BEGIN
	DECLARE @hash CHAR(32);
	
	SELECT @hash = SUBSTRING(sys.fn_sqlvarbasetostr(HASHBYTES(''MD5'', @Content)), 3, 32)
	
	RETURN @hash;
END
' 
END

GO
/****** Object:  Table [dbo].[ApiActions]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApiActions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApiActions](
	[ActionName] [varchar](200) NOT NULL,
	[ActionUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ApiActions] PRIMARY KEY CLUSTERED 
(
	[ActionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AppSetting]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppSetting](
	[Key] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/4/2016 6:11:44 PM ******/
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
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 2/4/2016 6:11:44 PM ******/
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
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 2/4/2016 6:11:44 PM ******/
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
/****** Object:  Table [dbo].[Languages]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Languages](
	[LangID] [int] IDENTITY(1,1) NOT NULL,
	[LangFullName] [varchar](50) NOT NULL,
	[Culture] [varchar](5) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 2/4/2016 6:11:44 PM ******/
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
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortfolioCategories](
	[PortfolioID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_PortfolioCategories] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Portfolios](
	[PortfolioID] [int] IDENTITY(1,1) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[Summary] [nvarchar](max) NULL,
	[MarkdownDescription] [nvarchar](max) NULL,
	[ModifyDate] [date] NOT NULL,
	[ProjectUrl] [nvarchar](max) NULL,
	[IconId] [int] NULL,
	[Rank] [float] NULL,
 CONSTRAINT [PK__Portfoli__3214EC07957343EF] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortfoliosComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[PortfoliosID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_PortfoliosComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/4/2016 6:11:44 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](100) NOT NULL,
	[RoleType] [nvarchar](50) NOT NULL,
	[ParentRoleId] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssCategories](
	[CategoryID] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Order] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssContentProviders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSS] [nvarchar](max) NULL,
	[JS] [nvarchar](max) NULL,
	[StartMarkup] [nvarchar](max) NULL,
	[EndMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_RssResourcesContentProvides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssFeeds](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[TitleHash] [char](32) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ThumbnailUrl] [nvarchar](max) NULL,
	[PublishDate] [datetime] NULL,
	[Author] [nvarchar](300) NULL,
	[ResourceID] [int] NOT NULL,
	[Score] [bigint] NOT NULL,
 CONSTRAINT [PK_RssFeeds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_RssFeeds] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssResources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Language] [nchar](10) NULL,
	[RssCategoryID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Favicon] [nvarchar](max) NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_RssResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssResources_ContentProviders](
	[ResourceID] [int] NOT NULL,
	[ContentProvideID] [int] NOT NULL,
 CONSTRAINT [PK_RssResourcesRelatedByContentProviders] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC,
	[ContentProvideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInRoles](
	[RoleId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_UserInRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ModifyDate] [date] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Password] [varbinary](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnable] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnable] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckUserPass]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_CheckUserPass]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 1/3/2016
-- Description:	Check user password
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckUserPass]
(
	@Username     NVARCHAR(100),
	@Pass         VARCHAR(MAX)
)
RETURNS TABLE
AS




	RETURN 
(
    SELECT u.UserID,
           u.Username,
           u.FirstName,
           u.LastName,
           u.ModifyDate,
           u.Email,
           u.PhoneNumber,
           u.TwoFactorEnable,
           r.[Role],
           r.RoleType
    FROM   Xomorod.dbo.Users u
           INNER JOIN UserInRoles ur
                ON  ur.UserID = u.UserID
           INNER JOIN Roles r
                ON  r.RoleID = ur.RoleId
    WHERE  u.Username = @Username
           AND u.[Password] = CAST(@Pass AS VARBINARY(MAX))
)
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_ApiActions]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_ApiActions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[udft_ApiActions]
(
)
RETURNS TABLE
AS

	RETURN 
(
    SELECT aa.ActionName,
           aa.ActionUrl
    FROM   Xomorod.dbo.ApiActions aa
    WHERE  aa.IsActive = 1
)
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[udft_RssCategories]
(
	@langID INT
)
RETURNS TABLE
AS


RETURN 
(
    SELECT rc.CategoryID,
           rc.Name,
           rc.[Description],
           rc.[Order]
    FROM   Xomorod.dbo.RssCategories rc
    WHERE  rc.IsActive = 1
           AND rc.LangID = @langID
)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[udft_RssResources]
(
)
RETURNS TABLE
AS
	RETURN 
	(
	    SELECT rr.ID,
	           rr.Name,
	           rr.[Url],
	           rr.[Language],
	           rr.RssCategoryID,
	           rr.Favicon,
	           rr.Score
	    FROM   Xomorod.dbo.RssResources rr
	    WHERE  rr.IsActive = 1
	)
' 
END

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Au_RssFeeds')
CREATE NONCLUSTERED INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
(
	[Author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Rs_RssFeeds')
CREATE NONCLUSTERED INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 2/4/2016 6:11:44 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'TX_RssFeeds')
CREATE NONCLUSTERED INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
(
	[TitleHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RssResources]    Script Date: 2/4/2016 6:11:44 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND name = N'IX_RssResources')
CREATE NONCLUSTERED INDEX [IX_RssResources] ON [dbo].[RssResources]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ApiActions_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ApiActions] ADD  CONSTRAINT [DF_ApiActions_IsActive]  DEFAULT ((1)) FOR [IsActive]
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
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Languages_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_IsActive]  DEFAULT ((1)) FOR [IsActive]
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
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_LangID]  DEFAULT ((1)) FOR [LangID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsCategory_Order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_NewsCategory_Order]  DEFAULT ((0)) FOR [Order]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_PublishDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_PublishDate]  DEFAULT (getdate()) FOR [PublishDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_Score]  DEFAULT ((0)) FOR [Score]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsResources_Language]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_NewsResources_Language]  DEFAULT (N'en') FOR [Language]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_Score]  DEFAULT ((1)) FOR [Score]
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
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_EmailConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_EmailConfirmed]  DEFAULT ((0)) FOR [EmailConfirmed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_PhoneNumberConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_TwoFactorEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_TwoFactorEnable]  DEFAULT ((0)) FOR [TwoFactorEnable]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_LockoutEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_LockoutEnable]  DEFAULT ((0)) FOR [LockoutEnable]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_AccessFailedCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AccessFailedCount]  DEFAULT ((0)) FOR [AccessFailedCount]
END

GO
USE [master]
GO
ALTER DATABASE [Xomorod] SET  READ_WRITE 
GO

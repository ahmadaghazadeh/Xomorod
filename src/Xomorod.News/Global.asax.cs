﻿using System;
using System.Diagnostics;
using System.IO;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using AdoManager;
using Xomorod.API.Providers;
using Xomorod.API.Providers.ErrorControlSystem;

namespace Xomorod.News
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register); // Register WebAPI Routes
            RouteConfig.RegisterRoutes(RouteTable.Routes); // Register Pages Routes

            ConnectionManager.SetToDefaultConnection(Debugger.IsAttached
                ? Connections.Xomorod.Connection.Name // local
                : Connections.XomorodServerSide.Connection.Name); // server

            Error += Application_Error;
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

            // Get the exception object.
            Exception exc = Server.GetLastError();

            if (exc == null)
                return;

            // Handle HTTP errors
            if (exc.GetType() == typeof(HttpException))
            {
                // The Complete Error Handling Example generates
                // some errors using URLs with "NoCatch" in them;
                // ignore these here to simulate what would happen
                // if a global.asax handler were not implemented.
                if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
                    return;

                //Redirect HTTP errors to HttpError page
                //Server.Transfer("~/Views/Errors");
                Response.Redirect("~/errors");
                return;
            }

            exc.RaiseError("Xomorod.News");

            // Clear the error from the server
            Server.ClearError();

            // Redirect to a landing page
            Response.Redirect("~/home");
        }
    }
}

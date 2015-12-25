﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace Xomorod
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            //config.Routes.MapHttpRoute(
            //     name: "ApiByName",
            //     routeTemplate: "api/{controller}/{name}/{id}",
            //    defaults: new { controller = "Translations", id = RouteParameter.Optional },
            //    constraints: new { name = @"^[a-z]+$" }
            //);

        }
    }
}

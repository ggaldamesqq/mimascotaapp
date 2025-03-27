using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using MiMascotaApp.Shared.Services;
using MiMascotaApp.Web.Client.Services;

var builder = WebAssemblyHostBuilder.CreateDefault(args);

// Add device-specific services used by the MiMascotaApp.Shared project
builder.Services.AddSingleton<IFormFactor, FormFactor>();

await builder.Build().RunAsync();

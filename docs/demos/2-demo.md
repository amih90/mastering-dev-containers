# Demo 2: Azure DevOps artifacts feed integration - Dotnet

1. Motivation: Using a private feed like Azure DevOps Artifacts feed ensures compliance with regulatory standards, enhances security by controlling access to artifacts, and supports best practices in software development by managing dependencies effectively. This helps maintain the integrity and quality of your software projects.
1. Show Azure DevOps Artifactory and how to connect to feed (https://msazure.visualstudio.com/One/_artifacts/feed/OneBranch-Consumption).
    1. Press **Connect to Feed** and show `dotnet` prerequisites.
    1. Search for `AsmAntimalwareInternal`.
    1. Go to [NuGet](https://www.nuget.org/) and show `AsmAntimalwareInternal` cannot be found.
1. Reopen **demo2** dev container.
1. Show `dotnet restore` failure, due to missing dependency.
1. Copy and rename `nuget.config.template` to `nuget.config`.
1. Update devcontainer.json with postCreateCommand and startCreateCommand.
1. Rebuild the container.
1. Authenticate the feed via the nuget output prompt.
1. Restore the project.


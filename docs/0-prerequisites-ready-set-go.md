# Prerequisites - Ready, Set, GO!

- [Installations](#installations)
- [Getting familiar with the course content](#course-content)
- [Docker images](#docker-images)
- [Additional resources](#additional-resources)


## Installations <a name="installations"></a>

* [Docker desktop](https://www.docker.com/products/docker-desktop) - An application that provides a streamlined way to build, share, and run containerized applications on your local machine.
* [Visual Studio Code](https://code.visualstudio.com/) - Open-source code editor developed by Microsoft that supports debugging, syntax highlighting, intelligent code completion, snippets, integrated version control, and a wide range of extensions for additional functionality.
    * [Remote Development extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) - An extension pack that allows developers to open any folder in a container, on a remote machine, or within the Windows Subsystem for Linux (WSL), and utilize the full feature set of VS Code.
* [Git](https://git-scm.com/downloads) - A distributed version control system that tracks changes in source code during software development.


## Getting familiar with the course content <a name="course-content"></a>
To get started with the course, follow these steps to set up your development environment and get familiar with the course content.

1. Open a new terminal.
1. Get the course content by cloning the course repository:
    ```bash
    git clone https://github.com/amih90/mastering-dev-containers.git
    ```
1. Open the repository in Visual Studio Code:
    ```bash
    cd mastering-dev-containers

    # Open current directory in VS Code
    code .
    ```
1. Open the file explorer or press `Ctrl` + `Shift` + `E`, and get familiar with the repository layout:
    ```bash
    .
    ├── .devcontainer                # Devcontainer files
    ├── .github                      # Configures a GitHub workflow
    ├── .vscode                      # VS Code workspace configurations
    ├── assets                       # Assets used in the documentation
    ├── docs                         # Documentation supplements
    ├── samples                      # Contains code samples
    │   ├── cpp                      # C++ sample applications
    |   ├── dotnet                   # .NET sample applications
    |   ├── python                   # Python sample applications
    ├── docker-compose.yml           # Docker Compose configuration
    └── ...
    ```

During the course, you will be asked to perform several [workshops](../README.md#workshops), and samples applications can be used as a reference.


## Docker images <a name="docker-images"></a>

To ensure a smooth and efficient start to the course, you’ll need to pull the Docker images that will be used throughout the workshops. These images contain all the necessary dependencies for the different development environments we’ll be working with.

To pull the Docker images, open your terminal and run the following command:

```bash
docker-compose --profile base-image pull
```

This command will download the images defined in the **docker-compose.yml** file to your local machine. Make sure to run this command before starting the course begins to ensure all necessary images are readily available.

> **Docker Compose** is a tool for defining and running multi-container Docker applications using a simple YAML file to configure all of your application's services. It allows you to start, stop, and manage complex applications with a single command, making it easier to orchestrate multiple containers.


## Additional resources <a name="additional-resources"></a>
| Name | Description |
| --- | --- |
| [Visual Studio Code - Open Source](https://github.com/microsoft/vscode) | Visual Studio Code repository. |
| [Docker Docs](https://docs.docker.com/) | Learn more about Docker. |


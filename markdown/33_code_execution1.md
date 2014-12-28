## Code Execution {#section:code-execution1}

As stated in Section \ref{section:requirements}, the execution of student-written code demands security measures since learners may submit programs that excessively consume resources or even cause damage to the system.

A number of possible attacks against systems using automatic code evaluation have been described by Fori\v{s}ek \cite{forivsek2006security}. Although it is far more likely that student programs are rather erroneous than deliberately malicious, providing our system in a \mooc context to a large number of learners makes it plausible that individual users may attempt to gain unauthorized access or do harm \cite{pieterse2013automated}.

Therefore, \tool has to provide a secured environment for running student programs that restricts the amount of consumable resources and withstands the damage that faulty or malicious programs may cause.

### Container-based Virtualization

Isolation and resource control have traditionally been achieved through the use of \glspl{vm}. However, abstraction provided by \glspl{vm} comes at the cost of reduced performance. In order to meet the scalability requirements of \moocs, \gls{os}–level virtualization techniques present an interesting alternative to traditional \glspl{vm} since they impose almost no overhead. Rather than running a full \gls{os} on virtual hardware, \gls{os}–level virtualization approaches leverage built-in \gls{os} capabilities that enable isolated environments without starting a \gls{vm}. Unlike a \gls{vm}, such an environment can comprise as little as a single process and only owns the resources that it actively consumes.

\Gls{lxc} is one of several \gls{os}–level virtualization methods that provide multiple virtual environments on a single host system. \Gls{lxc} is based on control groups\foo{https://www.kernel.org/doc/Documentation/cgroups/cgroups.txt} and namespaces, which are \gls{os} features that allow limiting and isolating the resources used by groups of processes. Therefore, virtual environments, so-called containers, have their own process and network spaces and cannot see or access objects on the outside. Although \gls{lxc}’s underlying concepts are well known and mature, it has only recently been adopted and standardized in mainstream \glspl{os}.

Due to its benefits, container-based virtualization seems to be predestined for our use case. It allows to run students’ programs in isolated environments that are practically unrestricted in terms of executable software while involving hardly any virtualization overhead. Containers represent a very flexible platform for diverse code evaluation tasks that is open to any programming language and third-party library available for Linux. The isolation provided by \gls{lxc} dispenses us from measures such as integrating a stand-alone sandboxing solution \cite{ihantola2010review} and detecting illegal code submissions by means of static analysis \cite{staubitz2009mini}.

Since every single code submission is executed in a new container starting in a known state, start-up time is important. Low latencies for code execution are a precondition for providing results and feedback in a timely manner. Small feedback times grant learners a more interactive development process and facilitate iterative problem-solving strategies. In contrast to traditional \glspl{vm}, \gls{lxc} entails much less overhead for starting the virtualization platform, which is why the execution of a code submission usually involves an overhead of less than a second. Therefore, an interactive development workflow is enabled.

### Docker

The open-source software Docker\foo{https://www.docker.com/} provides an abstraction layer on top of \gls{lxc}, including an image format and convenient tools for building, versioning, distributing, and deploying containers. Although several management tools for \gls{lxc} exist, Docker has emerged as the de facto standard \cite{felter28updated}.

We decided to employ Docker as the execution platform for students’ code submissions because it offers competitive performance \cite{felter28updated} as well as user-friendly tools that allow instructors to define custom execution environments by themselves.

Docker involves the concept of images, which are stateless templates for containers that are used to prepare applications for execution in a Docker container. Since most applications rely on third-party utilities, libraries, or services, images enable users to package such applications along with their dependencies \cite{merkel2014lightweight}. Existing Docker images can be used as starting points for the definition of new ones. Therefore, common dependencies can be bundled in a general base image to be used by multiple other ones. Besides open-source software, Docker offers Docker Hub\foo{https://hub.docker.com/}, a web-based repository for Docker images. Users can push their images to the repository and fetch them on another machine. By providing images publicly, they can easily be shared.

In order to prepare an execution environment that is tailored to the needs of a particular course, teachers are expected to create a corresponding Docker image and publish it at Docker Hub. After that, \tool can pull the image from the repository and utilize it for the execution of students’ code submissions.

Docker provides two means for the creation of images. Firstly, an image can be created manually by making changes to a container and committing the results to a new image. This approach allows to evolve existing images in a simple way, but it does not promote automation and collaboration.

Secondly, Docker provides a tool for building images automatically from a list of instructions, as well as a \gls{dsl}\foo{http://docs.docker.com/reference/builder/} for specifying the concrete steps to be taken. Using so-called Dockerfiles, images can be composed and adjusted in a textual fashion, which allows automated and reproducible creation. In addition to the capabilities provided by Docker Hub, Dockerfiles enable collaboration and version control using standard source code management tools, repositories, and practices.

\begin{listing}
\inputminted[frame=lines]{Dockerfile}{listings/Dockerfile-base}
\vspace{-0.33cm}
\caption{Code Ocean’s Base Dockerfile}
\label{listing:dockerfile-base}
\end{listing}

Listing \ref{listing:dockerfile-base} depicts the Dockerfile that describes the necessary steps for creating the common base image for all other Docker images used by \tool. The initial \mintinline{Dockerfile}{FROM} instruction indicates that the base image itself uses another Docker image as its foundation. In this example, \emph{ubuntu:14.04}\foo{https://registry.hub.docker.com/_/ubuntu/} (tag \emph{14.04} from the \emph{ubuntu} repository), a public Docker image providing a Ubuntu\foo{http://www.ubuntu.com/} basis is used. The following \mintinline{Dockerfile}{MAINTAINER} instruction provides information about the image’s creator. The \mintinline{Dockerfile}{RUN} instruction allows to specify arbitrary commands to be executed during image creation. In our example, it is used for updating the system’s package index. The \mintinline{Dockerfile}{VOLUME} instruction creates a mount point to be used for mounting a directory containing student-written files for execution. Finally, the \mintinline{Dockerfile}{WORKDIR} instruction sets the working directory for subsequent \mintinline{Dockerfile}{RUN} instructions.

\begin{listing}
\inputminted[frame=lines]{Dockerfile}{listings/Dockerfile-python}
\vspace{-0.33cm}
\caption{Dockerfile Describing a Python Environment}
\label{listing:dockerfile-python}
\end{listing}

Listing \ref{listing:dockerfile-python} shows the Dockerfile corresponding to the image that \tool uses for executing Python programming assignments. This time, the \mintinline{Dockerfile}{FROM} instruction specifies to use the Docker image depicted in Listing \ref{listing:dockerfile-base} as a foundation. In order to install the most recent release of Python, the \mintinline{Dockerfile}{RUN} instructions state to set up some dependencies, download the Python source to a temporary directory, extract the source archive, and start compilation.

The presented Dockerfiles illustrate the means that instructors are expected to use for defining custom execution environments for their courses. We believe that Docker provides teachers with a wide range of flexibility and a user-friendly tool chain.
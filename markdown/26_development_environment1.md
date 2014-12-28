## Development Environments {#section:development-environment1}

\moocs that cover programming topics are numerous and multifaceted. Based on contents and target audience, courses follow different approaches for providing learners with the means to write and execute code. Approaches can be divided into desktop solutions and web-based solutions.

### Desktop Solutions

Desktop development tools include standard \glspl{ide}, which are used by professionals, and educational tools, addressing beginners.

#### Industrial Development Tools

Some \cs educators believe that novice programmers should use practices and tools that are similar to those used in the software industry \cite{vihavainen2013scaffolding}. Learners are required to utilize industrial-strength development tools that are freely available, such as Eclipse\foo{https://www.eclipse.org/}, IntelliJ IDEA\foo{https://www.jetbrains.com/idea/}, and NetBeans\foo{https://netbeans.org/}. This approach is common when on-campus courses are transformed into \moocs.

Relying on standard \glspl{ide} has the advantage that students become familiar with established development tools, which can be useful in contexts other than a single \mooc. Moreover, full-fledged desktop \glspl{ide} almost always provide built-in debugging and testing capabilities, customizability, and advanced features that promote productivity, such as automated source code refactoring.

In order to bring desktop \glspl{ide} and \moocs closer together, \glspl{ide}’ common extension capabilities can be leveraged to implement connecting features, such as download of programming assignments, transmission of analytical data, and submission of finished exercises to an assessment server \cite{vihavainen2013scaffolding}. Without a proper coupling, using desktop \glspl{ide} in \moocs might necessitate a development workflow that is heavily based on downloading, unzipping, zipping, and uploading code, which is a procedure that does not belong to the best practices of professional software engineers and that should not be taught to beginners \cite{vihavainen2013scaffolding}.

Programming \moocs that rely on desktop \glspl{ide} entail the disadvantage that even absolute beginners are put under the obligation to download, install, and configure software that is built for experienced programmers. This may also require installing third-party dependencies, such as \glspl{sdk}. However, installing and configuring an \gls{ide} requires a level of digital literacy that cannot be expected by all participants of a \mooc.

Liyanagunawardena et al\. \cite{liyanagunawardena2014teaching} describe their experiences during a \mooc teaching Android\foo{https://android.com/} programming to complete beginners, which required participants to set up several software components. Due to lacking skills in setting up software, the teaching team had to support many learners in order not to lose them at the beginning. Some of them were not even able to meet the challenge of unzipping a compressed archive.

Moreover, solving practical assignments on learners’ \glspl{pc} can create “a challenging inhomogeneity amongst the involved machines, operating systems and network infrastructures” \cite{willems2013introducing}, which makes it close to impossible to identify all potential issues for single users during exercise design. With tens of thousands of students, troubleshooting of individual problems is not feasible. However, minor problems can build a significant barrier to success for beginning students, keeping them from starting programming \cite{lahtinen2005study}.

To circumvent installation problems and platform peculiarities, a fully configured desktop development environment can be provided in the form of a \gls{vm} image or recipe, using cross-platform virtualization tools, such as Vagrant\foo{https://www.vagrantup.com/} and VirtualBox\foo{https://www.virtualbox.org/}. This approach supplies learners with a homogeneous development environment and limits setup tasks to a minimum. However, virtualization software still has to be installed, which might pose a challenge for some learners. Moreover, different \glspl{os} and virtualization software versions introduce inhomogeneity into the concept. Course providers should also consider that some students’ \glspl{pc} might be too slow for running a \gls{vm} \cite{fox2014software}.

#### Educational Development Tools

Educational programming environments, such as BlueJ\foo{http://www.bluej.org/} \cite{kolling2003bluej}, Hackety Hack\foo{http://www.hackety.com/}, Processing\foo{http://www.processing.org/}, and Squeak Etoys\foo{http://www.squeakland.org/} \cite{kay2005squeak}, aim at making programming easily available for beginners by providing all-in-one packages that supply development tools and an execution platform. Such environments are usually easy to install or available as installation-free, portable packages. Therefore, they require only basic computer skills to start programming.

However, the approach of using educational development environments in the context of a \mooc is restricted to the few ones that are available. Besides, these tools are often limited to built-in capabilities and might therefore not fit all requirements of a course.

### Web-based Solutions

As discussed in Section \ref{section:web-based-applications}, web-based development tools provide homogeneous, installation-free development environments. By eliminating the need for setup and configuration, they lower students’ barriers to start programming \cite{vogel2014quality}. Since participants of a \mooc already have access to a web browser, web-based development tools are virtually predestined in this context \cite{zachary2003exploiting}. Furthermore, the web-based nature of \mooc platforms enables a tight integration of web-based special-purpose tools.

Web-based development environments can either be provided by bringing dedicated tools into operation or by leveraging third-party tools that are already existent.

#### Dedicated Development Tools

Dedicated development tools are supplied as tightly integrated parts of e-learning platforms. They can be distinguished based on their approach for the execution of learners’ code. Student-written code is either executed in the client’s web browser or transmitted to the server for remote execution.

##### Client-Side Code Execution

Executing a learner’s code on her own machine is a resource-efficient approach since no server-side resources are claimed for code execution. Furthermore, there is no need for security considerations in terms of dealing with potentially untrustworthy code. Moreover, since no client-server round trips are involved, client-side code execution promotes interactivity and avoids potential delays during high-demand periods before assignment deadlines \cite{lahtinen2005study}.

Using the learner’s web browser as execution platform is particularly suitable for teaching client-side web technologies, such as \gls{html}, JavaScript, and \gls{css}, since interpreters for these languages are built into browsers.

The major drawback of client-side code execution is its limitation to browser-supported programming languages and \glspl{api} as well as special JavaScript-based derivatives of non-native languages, such as ClojureScript\foo{http://clojurescript.net/}, Opal\foo{http://opalrb.org/}, and Skulpt\foo{http://www.skulpt.org/}, which are in-browser implementations of Clojure\foo{http://clojure.org/}, Ruby\foo{https://www.ruby-lang.org/}, and Python\foo{https://www.python.org/}.

##### Server-Side Code Execution

Compared to its client-side equivalent, server-side code execution offers much more flexibility since the set of executable programming languages is virtually unlimited. Moreover, code evaluation for both exploration and assessment is performed in one place and can use the same procedure. Additionally, sending partial solutions for execution to the server allows reproducing the iterations of a learner’s development cycle and can provide valuable insights into students’ problem-solving strategies.

The advantages of server-side code execution come at the cost of increased computational load and feedback latency. Furthermore, careful security considerations are necessary.

#### Third-Party Development Tools

Web-based development tools can be realized without the need for self-hosted solutions. Instead of providing dedicated development environments and allocating platform resources, programming \moocs can leverage third-party services for several or even all aspects of the development process \cite{fox2012crossing,staubitz2014lightweight}. \Gls{saas} and \gls{paas} providers typically offer free plans for starters, which fit the needs of \mooc participants and can provide the tools that are needed for practical programming assignments. For instance, novice programmers’ demands could be covered based on third-party services by leveraging Cloud9 as a web-based \gls{ide} (see Section \ref{section:web-based-development-tools}), GitHub\foo{https://github.com/} for code hosting and issue tracking, Heroku as execution platform, and Travis CI\foo{https://travis-ci.org/} for continuous testing.

Not only does this approach save the resources of the e-learning platform, but it also enables learners to gain practice in working with tools and services that are used by professionals. According to Fox and Patterson \cite{fox2012crossing}, deploying their projects in the same scalable environment as used by professional developers supplies learners with valuable experience. Moreover, the approach can provide students a feeling of accomplishment when shipping working code that can be used by people other than their instructors.

Relying on freely available online services involves the drawbacks that learners are required to register with third-party companies, that individual tools are spread over different platforms, and that \moocs following this approach are highly dependent on the availability and reliability of external parties.